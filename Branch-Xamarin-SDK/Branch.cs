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

		public String AppKey;

		protected IBranchGetDeviceInformation DeviceInformation;
		protected IBranchProperties Properties;
		protected SemaphoreSlim QueueSema;
		protected Queue<BranchRequest> RequestQueue;  // This semaphore is used to ensure access to the queue iss synchronized
		protected SemaphoreSlim NetworkSema;  // This ensures that only one network operation happens at a time.
		protected bool Inited;
		protected Task InitTask;

		protected internal Dictionary<BranchLinkData, Uri> LinkDataCache;
		protected internal Dictionary<string, int> TotalActionCounts;
		protected internal Dictionary<string, int> UniqueActionCounts;
		protected internal String LinkClickIdentifier;

		int timeout = -1;
		int retries = -1;

		public bool Debug;
		public TimeSpan Timeout {
			get {
				if (timeout == -1) {
					timeout = Properties.GetPropertyInt (Constants.TIMEOUT_KEY, 5);
				}
				return TimeSpan.FromSeconds(timeout);
			}
			set {
				timeout = (int)value.TotalSeconds;
				Properties.SetPropertyInt (Constants.TIMEOUT_KEY, timeout);
			}
		}
		public int Retries {
			get {
				if (retries == -1) {
					retries = Properties.GetPropertyInt (Constants.RETRY_KEY, 1);
				}
				return retries;
			}
			set {
				retries = value;
				Properties.SetPropertyInt (Constants.RETRY_KEY, retries);
			}
		}

		protected Branch ()
		{
			RequestQueue = new Queue<BranchRequest> ();
			QueueSema = new SemaphoreSlim (1, 1);
			NetworkSema = new SemaphoreSlim (1, 1);
			LinkDataCache = new Dictionary<BranchLinkData, Uri>();
			TotalActionCounts = new Dictionary<string, int> ();
			UniqueActionCounts = new Dictionary<string, int> ();
		}

		public static Branch GetInstance() {
			if (branch == null) {
				throw new BranchException ("You must initialize Branch before you can use the Branch object!");
			}

			return branch;
		}

		public async Task InitSessionAsync(IBranchReferralInitInterface callback) {
			bool isReferrable = (DeviceInformation.GetUpdateState () == 0) && (User.Current == null);
			await InitSessionInternalAsync (callback, isReferrable);
		}

		public async Task InitSessionAsync(IBranchReferralInitInterface callback, bool isReferrable) {
			await InitSessionInternalAsync (callback, isReferrable);
		}

		async Task InitSessionInternalAsync(IBranchReferralInitInterface callback, bool isReferrable) {
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
						request = new BranchOpenRequest (
							isReferrable,
							DeviceInformation.GetAppVersion(),
							DeviceInformation.GetOSVersion(),
							DeviceInformation.GetOS(),
							DeviceInformation.GetURIScheme(),
							DeviceInformation.GetAdTrackingEnabled(),
							callback);
					} else {
						bool isReal;
						String deviceId = DeviceInformation.GetDeviceId (Debug, out isReal);

						int width, height;
						int density = DeviceInformation.GetDpi (out width, out height);
						request = new BranchInstallRequest (deviceId,
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
							DeviceInformation.GetAdTrackingEnabled(),
							callback);
					}

					LinkClickIdentifier = null;
					await NetworkSema.WaitAsync ();
					InitTask = request.Execute ();
					await InitTask;
					NetworkSema.Release ();
				} catch (Exception ex) {
					System.Diagnostics.Debug.WriteLine ("Request Ex: " + ex.Message);
				}
			}
		}

		public async Task CloseSessionAsync(IBranchCompletionCallback callback = null) {
			var req = new BranchCloseRequest (callback);
			await EnqueueRequestAsync (req);
			Inited = false;
		}

		public async Task Identify(String user, IBranchReferralInitInterface callback) {
			var req = new BranchIdentifyRequest (user, callback);
			await EnqueueRequestAsync (req);
		}

		public async Task Logout(IBranchCompletionCallback callback = null) {
			var req = new BranchLogoutRequest (callback);
			await EnqueueRequestAsync (req);
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
			String jsonStr = null;
			if (parameters != null) {
				jsonStr = JsonConvert.SerializeObject (parameters);
			}

			var data = new BranchLinkData(tags, alias, type, channel, feature, stage, jsonStr);

			Uri cachedUri;
			LinkDataCache.TryGetValue (data, out cachedUri);
			if (cachedUri == null) {
				var req = new BranchGetUrlRequest (data,
					          callback);
				await EnqueueRequestAsync (req);
			} else {
				if (callback != null) {
					callback.Finished (cachedUri, null);
				}
			}
		}

		public async Task UserCompletedAction(String action, Dictionary<string, object> metadata = null) {
			var req = new BranchCompleteActionRequest (action, metadata);
			await EnqueueRequestAsync (req);
		}

		public async Task LoadReferralActionCounts(IBranchCompletionCallback callback = null) {
			var req = new BranchLoadReferralActionCountsRequest (callback);
			await EnqueueRequestAsync (req);
		}

		public async Task GetReferralCode(IBranchReferralInterface callback,
			int amount,
			String prefix = null,
			DateTime? expiration = null,
			String bucket = null,
			int calculationType = Constants.REFERRAL_CODE_AWARD_UNLIMITED,
			int location = Constants.REFERRAL_CODE_LOCATION_REFERRING_USER) {
			BranchGetReferralCodeRequest req = new BranchGetReferralCodeRequest(
				amount,
				prefix,
				expiration,
				bucket,
				calculationType,
				location,
				callback);
			await EnqueueRequestAsync(req);
		}

		public async Task ValidateReferralCode(IBranchReferralInterface callback, String code) {
			BranchValidateReferralCodeRequest req = new BranchValidateReferralCodeRequest (code, callback);
			await EnqueueRequestAsync (req);
		}

		public async Task ApplyReferralCode(IBranchReferralInterface callback, String code) {
			BranchApplyReferralCodeRequest req = new BranchApplyReferralCodeRequest (code, callback);
			await EnqueueRequestAsync (req);
		}

		public Dictionary<String, object> GetLatestReferringParams() {
			String data = Properties.GetPropertyString ("last_referring_params");
			if (!String.IsNullOrWhiteSpace(data)) {
				var settings = new JsonSerializerSettings();
				var converterList = new List<JsonConverter>();
				converterList.Add(new DictionaryConverter());
				settings.Converters = converterList;
				return JsonConvert.DeserializeObject < Dictionary<String, object>> (data, settings);
			}

			return null;
		}

		public Dictionary<String, object> GetFirstReferringParams() {
			String data = Properties.GetPropertyString ("first_referring_params");
			if (!String.IsNullOrWhiteSpace(data)) {
				var settings = new JsonSerializerSettings();
				var converterList = new List<JsonConverter>();
				converterList.Add(new DictionaryConverter());
				settings.Converters = converterList;
				return JsonConvert.DeserializeObject < Dictionary<String, object>> (data, settings);
			}

			return null;
		}

		public int GetReferralCountsForAction(String action, bool unique) {
			int ret;
			if (unique) {
				UniqueActionCounts.TryGetValue (action, out ret);
			} else {
				TotalActionCounts.TryGetValue (action, out ret);
			}
			return ret;
		}

		// Private Methods

		// Methods to manipulate the request queue
		async Task ExecuteNextRequestAsync() {
			BranchRequest request = await DequueRequestAsync ();
			if (request != null) {
				await NetworkSema.WaitAsync ();
				await request.Execute ();
				NetworkSema.Release ();
			}
		}

		async Task EnqueueRequestAsync(BranchRequest request) {
			await QueueSema.WaitAsync ();
			RequestQueue.Enqueue (request);
			QueueSema.Release ();
			await ExecuteNextRequestAsync ();
		}

		async Task<BranchRequest> PeekRequestAsync() {
			BranchRequest ret = null;
			await QueueSema.WaitAsync ();
			if (RequestQueue.Count > 0) {
				ret = RequestQueue.Peek ();
			}
			QueueSema.Release ();
			return ret;
		}

		async Task<BranchRequest> DequueRequestAsync() {
			BranchRequest ret = null;
			await QueueSema.WaitAsync ();
			if (RequestQueue.Count > 0) {
				ret = RequestQueue.Dequeue ();
			}
			QueueSema.Release ();
			return ret;
		}

		public void Log (String message, String tag = null, int level = 3) {
			DeviceInformation.WriteLog (message, tag, level);
		}

		// Some internal methods
		protected void InitUserAndSession() {
			String userId = Properties.GetPropertyString ("identity_id");
			if (!String.IsNullOrWhiteSpace(userId)) {
				User.Current = new User (userId, null, null);
				System.Diagnostics.Debug.WriteLine ("User ID: " + userId);
			}
			String deviceFingerprintId = Properties.GetPropertyString ("device_fingerprint_id");
			if (!String.IsNullOrWhiteSpace(deviceFingerprintId)) {
				Session.Current = new Session(null, deviceFingerprintId, null);
			}
		}

		protected internal void UpdateUser (String identity, Dictionary<string, object> result, String dataStr) {
			String identityId;
			String urlStr;

			object temp;

			result.TryGetValue ("identity_id", out temp);
			identityId = temp as String;

			result.TryGetValue ("link", out temp);
			urlStr = temp as String;

			if (identityId != null) {
				Properties.SetPropertyString ("identity_id", identityId);
			}

			User.Current = new User (identityId, identity, urlStr);

			if (dataStr != null) {
				Properties.SetPropertyString ("first_referring_params", dataStr);
			}
		}

		protected internal void UpdateUserAndSession(Dictionary<string, object> result, String dataStr, bool isInstall) {
			String sessionId;
			String identityId;
			String deviceFingerprintId;
			String link;
			String clicked;

			object temp;

			result.TryGetValue ("session_id", out temp);
			sessionId = temp as String;

			result.TryGetValue ("identity_id", out temp);
			identityId = temp as String;

			result.TryGetValue ("device_fingerprint_id", out temp);
			deviceFingerprintId = temp as String;

			result.TryGetValue ("link", out temp);
			link = temp as String;

			result.TryGetValue ("link_click_id", out temp);
			clicked = temp as String;

			Session.Current = new Session(sessionId, deviceFingerprintId, clicked);
			User.Current = new User (identityId, null, link);

			if (identityId != null) {
				Properties.SetPropertyString ("identity_id", identityId);
			}

			if (deviceFingerprintId != null) {
				Properties.SetPropertyString ("device_fingerprint_id", deviceFingerprintId);
			}

			if (dataStr != null) {
				Properties.SetPropertyString ("last_referring_params", dataStr);
				if (isInstall) {
					Properties.SetPropertyString ("first_referring_params", dataStr);
				}
			} else {
				Properties.SetPropertyString ("last_referring_params", "");
				if (isInstall) {
					Properties.SetPropertyString ("first_referring_params", "");
				}
			}
		}
	}
}

