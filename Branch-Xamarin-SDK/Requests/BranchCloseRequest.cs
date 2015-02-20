using System;
using System.Net.Http;
using System.Threading.Tasks;

using Newtonsoft.Json;

namespace BranchXamarinSDK
{
	public class BranchCloseRequest : BranchRequest
	{
		public class CloseParams {
			public string app_id;
			public string device_fingerprint_id;
			public string identity_id;
			public string session_id;

			public CloseParams() {
			}
		}

		readonly CloseParams Params;
		readonly IBranchCompletionCallback Callback;

		public BranchCloseRequest (IBranchCompletionCallback callback = null) : base (BranchRequestType.REQUEST_CLOSE)
		{
			Params = new CloseParams ();
			Params.app_id = Branch.GetInstance().AppKey;
			Params.device_fingerprint_id = Session.Current.DeviceFingerprintId;
			Params.identity_id = User.Current.Id;
			Params.session_id = Session.Current.Id;
			Callback = callback;
		}

		override async public Task Execute() {
			try {
				InitClient();
				Branch.GetInstance ().Log ("Sending close request", "WEBAPI");
				String inBody = JsonConvert.SerializeObject(Params);
				HttpResponseMessage response = await Client.PostAsync ("v1/close",
					new StringContent (inBody, System.Text.Encoding.UTF8, "application/json"));
				if (response.StatusCode == System.Net.HttpStatusCode.OK) {
					Branch.GetInstance().Log("Close request completed successfully", "WEBAPI");
					if (Callback != null) {
						Callback.RequestComplete(null);
					}
				} else {
					Branch.GetInstance().Log("Close failed with HTTP error: " + response.ReasonPhrase, "WEBAPI", 6);
					if (Callback != null) {
						Callback.RequestComplete(new BranchError("Close request failed with HTTP error: " + response.ReasonPhrase));
					}
				}
				System.Diagnostics.Debug.WriteLine("Close session completed with status: " + response.ReasonPhrase);
			} catch (TaskCanceledException ex) {
				if (Callback != null) {
					Callback.RequestComplete(new BranchError("Operation timed out", 1));
				}
				Branch.GetInstance().Log("Close request timed out", "WEBAPI", 6);
			} catch (Exception ex) {
				if (Callback != null) {
					Callback.RequestComplete(new BranchError("Execption: " + ex.Message));
				}
				Branch.GetInstance().Log("Exception sending close: " + ex.Message, "WEBAPI", 6);
				System.Diagnostics.Debug.WriteLine ("Exception: " + ex);
			}
		}
	}
}

