using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;

using Newtonsoft.Json;

namespace BranchXamarinSDK
{
	public class BranchLogoutRequest: BranchRequest
	{
		public class LogoutParams {
			public string app_id;
			public string device_fingerprint_id;
			public string identity_id;
			public string session_id;

			public LogoutParams() {
			}
		}

		readonly LogoutParams Params;
		readonly IBranchCompletionCallback Callback;

		public BranchLogoutRequest (IBranchCompletionCallback callback = null) : base (BranchRequestType.REQUEST_LOGOUT)
		{
			Params = new LogoutParams ();
			Params.app_id = Branch.GetInstance().AppKey;
			Params.device_fingerprint_id = Session.Current.DeviceFingerprintId;
			Params.identity_id = User.Current.Id;
			Params.session_id = Session.Current.Id;
			Callback = callback;
		}

		override async public Task Execute() {
			try {
				InitClient();
				String inBody = JsonConvert.SerializeObject(Params);
				Branch.GetInstance().Log("Sending logout.", "WEBAPI", 3);
				HttpResponseMessage response = await Client.PostAsync ("v1/logout",
					new StringContent (inBody, System.Text.Encoding.UTF8, "application/json"));
				if (response.StatusCode == HttpStatusCode.OK) {
					String body = await response.Content.ReadAsStringAsync ();

					Branch.GetInstance().Log("Logout successful", "WEBAPI", 3);
					var settings = new JsonSerializerSettings();
					var converterList = new List<JsonConverter>();
					converterList.Add(new DictionaryConverter());
					settings.Converters = converterList;
					Dictionary<string, object> result = JsonConvert.DeserializeObject<Dictionary<string, object>>(body, settings);
					Branch.GetInstance().UpdateUserAndSession(result, null, true); // Passing true so that both first and latest data gets cleared.
					Branch.GetInstance().TotalActionCounts.Clear();
					Branch.GetInstance().UniqueActionCounts.Clear();
					if (Callback != null) {
						Callback.RequestComplete(null);
					}
				} else {
					if (Callback != null) {
						Callback.RequestComplete(new BranchError("Logout failed with HTTP error: " + response.ReasonPhrase));
					}
					Branch.GetInstance().Log("Logout failed with HTTP error: " + response.ReasonPhrase, "WEBAPI", 6);
				}
			} catch (TaskCanceledException ex) {
				if (Callback != null) {
					Callback.RequestComplete(new BranchError("Operation timed out", 1));
				}
				Branch.GetInstance ().Log ("Logout timed out", "WEBAPI", 6);
			} catch (Exception ex) {
				if (Callback != null) {
					Callback.RequestComplete(new BranchError("Execption: " + ex.Message));
				}
				System.Diagnostics.Debug.WriteLine ("Exception: " + ex);
				Branch.GetInstance ().Log ("Exception sending logout" + ex.Message, "WEBAPI", 6);
			}
		}
	}
}

