using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

using Newtonsoft.Json;

namespace BranchXamarinSDK
{
	public class Branch
	{
		protected static Branch branch;

		protected String AppKey;
		protected IBranchGetDeviceInformation DeviceInformation;
		protected IBranchProperties Properties;
		protected SemaphoreSlim QueueSema;
		protected Queue<BranchRequest> RequestQueue;  // This semaphore is used to ensure access to the queue iss synchronized
		protected SemaphoreSlim NetworkSema;  // This ensures that only one network operation happens at a time.
		protected bool Inited;
		protected Task InitTask;
		protected Dictionary<BranchLinkData, Uri> LinkDataCache;

		protected Branch ()
		{
			RequestQueue = new Queue<BranchRequest> ();
			QueueSema = new SemaphoreSlim (1, 1);
			NetworkSema = new SemaphoreSlim (1, 1);
			LinkDataCache = new Dictionary<BranchLinkData, Uri>();
		}

		public static Branch GetInstance() {
			if (branch == null) {
				throw new BranchException ("You must initialize Branch before you can use the Branch object!");
			}

			return branch;
		}

		public async Task InitSessionAsync(IBranchReferralInitInterface callback) {
			bool isReferrable = (DeviceInformation.GetUpdateState () == 0) && (User.Current == null);
			await InitSessionInternalAsync (callback, null, isReferrable);
		}

		public async Task InitSessionAsync(IBranchReferralInitInterface callback, Uri data) {
			bool isReferrable = (DeviceInformation.GetUpdateState () == 0) && (User.Current == null);
			await InitSessionInternalAsync (callback, data, isReferrable);
		}

		public async Task InitSessionAsync(IBranchReferralInitInterface callback, bool isReferrable) {
			await InitSessionInternalAsync (callback, null, isReferrable);
		}

		public async Task InitSessionAsync(IBranchReferralInitInterface callback, Uri data, bool isReferrable) {
			await InitSessionInternalAsync (callback, data, isReferrable);
		}

		private async Task InitSessionInternalAsync(IBranchReferralInitInterface callback, Uri data, bool isReferrable) {
			// Init session takes priority over any other pending operation.  It does not get put on the queue
			// and instead executes as soon as any inprogress operation finishes.

			if (Inited) {
				// Init has already been called.  If there is no outstanding
				// init operation, just call the callback with an empty result.
				if ((InitTask == null) || InitTask.IsCompleted) {
					if (callback != null) {
						callback.OnInitFinished (null, new BranchError ("Init is already complete"));
					}
				} else {
					if (callback != null) {
						callback.OnInitFinished (null, new BranchError ("Init is already in progress"));
					}
				}
			} else {
				Inited = true;
				try {
					BranchRequest request;
					if (User.Current != null) {
						request = new BranchOpenRequest (AppKey,
							Properties.GetProperty("device_fingerprint_id"),
							User.Current.Id,
							isReferrable,
							DeviceInformation.GetAppVersion(),
							DeviceInformation.GetOSVersion(),
							DeviceInformation.GetOS(),
							DeviceInformation.GetURIScheme(),
							false,
							callback);
					} else {
						bool isReal;
						String deviceId = DeviceInformation.GetDeviceId (false, out isReal);

						int width, height;
						int density = DeviceInformation.GetDpi (out width, out height);
						request = new BranchInstallRequest (AppKey,
							deviceId,
							isReal,
							DeviceInformation.GetAppVersion (),
							DeviceInformation.GetPhoneBrand (),
							DeviceInformation.GetPhoneModel (),
							DeviceInformation.GetOS (),
							DeviceInformation.GetOSVersion (),
							isReferrable,
							DeviceInformation.GetUpdateState (),
							DeviceInformation.GetCarrier (),
							DeviceInformation.GetNfcPresent (),
							DeviceInformation.GetTelephonePresent (),
							DeviceInformation.GetBluetoothPresent (),
							DeviceInformation.GetBluetoothVersion (),
							density,
							width,
							height,
							DeviceInformation.GetWifiConnected (),
							DeviceInformation.GetURIScheme(),
							false,
							callback);
					}

					await NetworkSema.WaitAsync ();
					InitTask = request.Execute ();
					await InitTask;
					NetworkSema.Release ();
				} catch (Exception ex) {
					System.Diagnostics.Debug.WriteLine ("Request Ex: " + ex.Message);
				}
			}
		}

		public async Task CloseSessionAsync() {
			BranchCloseRequest req = new BranchCloseRequest (AppKey,
				                         Properties.GetProperty ("device_fingerprint_id"),
				                         Properties.GetProperty ("identity_id"),
				                         Properties.GetProperty ("session_id"));
			await EnqueueRequestAsync (req);
			Inited = false;
		}

		public async Task GetShortUrlAsync(IBranchGetUrlInterface callback,
			Dictionary<String, dynamic> parameters = null,
			String alias = null,
			string channel = null,
			string stage = null,
			ICollection<String> tags = null,
			string feature = null,
			int type = Constants.URL_TYPE_UNLIMITED)
		{
			BranchLinkData data = new BranchLinkData(tags, alias, type, channel, feature, stage, parameters);
			BranchGetUrlRequest req = new BranchGetUrlRequest (
				AppKey,
				Session.Current.Id,
				User.Current.Id,
				Properties.GetProperty("device_fingerprint_id"),
				data,
				callback);
			await EnqueueRequestAsync (req);
		}

		public Dictionary<String, dynamic> GetLastReferringParams() {
			String data = Properties.GetProperty ("last_referring_params");
			if (!String.IsNullOrWhiteSpace(data)) {
				return JsonConvert.DeserializeObject < Dictionary<String, dynamic>> (data);
			}

			return null;
		}

		public Dictionary<String, dynamic> GetFirstReferringParams() {
			String data = Properties.GetProperty ("first_referring_params");
			if (!String.IsNullOrWhiteSpace(data)) {
				return JsonConvert.DeserializeObject < Dictionary<String, dynamic>> (data);
			}

			return null;
		}

		// Private Methods

		// Methods to manipulate the request queue
		private async Task ExecuteNextRequestAsync() {
			BranchRequest request = await DequueRequestAsync ();
			if (request != null) {
				await NetworkSema.WaitAsync ();
				await request.Execute ();
				NetworkSema.Release ();
			}
		}

		/*
		private async Task<bool> MoveInstallOrOpenToFrontAsync() {
			bool result = false;

			await QueueSema.WaitAsync ();

			BranchRequest[] requests = new BranchRequest[RequestQueue.Count];
			RequestQueue.CopyTo (requests, 0);

			int index = -1;
			for (int i = 0; i < requests.Length; i++) {
				if ((requests[i].Type == BranchRequestType.REQUEST_INSTALL) ||
					(requests[i].Type == BranchRequestType.REQUEST_OPEN)) {
					index = i;
					break;
				}
			}

			if (index != -1) {
				RequestQueue.Clear ();
				RequestQueue.Enqueue (requests [index]);
				for (int i = 0; i < requests.Length; i++) {
					if (i != index) {
						RequestQueue.Enqueue (requests [i]);
					}
				}
				result = true;
			}

			QueueSema.Release ();

			return result;
		}
		*/

		private async Task EnqueueRequestAsync(BranchRequest request) {
			await QueueSema.WaitAsync ();
			RequestQueue.Enqueue (request);
			QueueSema.Release ();
			await ExecuteNextRequestAsync ();
		}

		private async Task<BranchRequest> PeekRequestAsync() {
			BranchRequest ret = null;
			await QueueSema.WaitAsync ();
			if (RequestQueue.Count > 0) {
				ret = RequestQueue.Peek ();
			}
			QueueSema.Release ();
			return ret;
		}

		private async Task<BranchRequest> DequueRequestAsync() {
			BranchRequest ret = null;
			await QueueSema.WaitAsync ();
			if (RequestQueue.Count > 0) {
				ret = RequestQueue.Dequeue ();
			}
			QueueSema.Release ();
			return ret;
		}

		// Some internal methods
		protected void InitUserAndSession() {
			String sessionId = Properties.GetProperty ("session_id");
			if (!String.IsNullOrWhiteSpace(sessionId)) {
				Session.Current = new Session(sessionId);
			}

			String userId = Properties.GetProperty ("identity_id");
			if (!String.IsNullOrWhiteSpace(userId)) {
				User.Current = new User(userId);
				System.Diagnostics.Debug.WriteLine ("User ID: " + userId);
			}
		}
		
		protected internal void UpdateUserAndSession(Dictionary<string, object> result, Dictionary<string, object> data, bool isInstall) {
			String sessionId = null;
			String identityId = null;
			String deviceFingerprintId = null;

			object temp;

			result.TryGetValue ("session_id", out temp);
			if (temp is String) {
				sessionId = (String)temp;
			}
			temp = null;

			result.TryGetValue ("identity_id", out temp);
			if (temp is String) {
				identityId = (String)temp;
			}
			temp = null;

			result.TryGetValue ("device_fingerprint_id", out temp);
			if (temp is String) {
				deviceFingerprintId = (String)temp;
			}

			if (sessionId != null) {
				Session.Current = new Session(sessionId);
				Properties.SetProperty ("session_id", sessionId);
			}

			if (identityId != null) {
				User.Current = new User(identityId);
				Properties.SetProperty ("identity_id", identityId);
			}

			if (deviceFingerprintId != null) {
				Properties.SetProperty ("device_fingerprint_id", deviceFingerprintId);
			}

			if (data != null) {
				String dataStr = JsonConvert.SerializeObject (data);
				Properties.SetProperty ("last_referring_params", dataStr);
				if (isInstall) {
					Properties.SetProperty ("first_referring_params", dataStr);
				}
			}
		}

		protected internal void UpdateBranchLinkDataCache(Uri uri, BranchLinkData data) {
			if ((uri != null) && (data != null)) {
				LinkDataCache.Add (data, uri);
			}
		}
	}
}

