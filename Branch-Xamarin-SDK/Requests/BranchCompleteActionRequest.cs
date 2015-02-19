using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;

using Newtonsoft.Json;

namespace BranchXamarinSDK
{
	public class BranchCompleteActionRequest : BranchRequest
	{
		public class CompleteActionParams {
			public string app_id;
			public string device_fingerprint_id;
			public string identity_id;
			public string session_id;
			[JsonProperty("event")]
			public string eventStr;
			public Dictionary<string, object> metadata;

			public CompleteActionParams() {
			}
		}

		readonly CompleteActionParams Params;

		public BranchCompleteActionRequest (
			string action,
			Dictionary<string, object> metadata) : base(BranchRequestType.REQUEST_COMPLETE_ACTION)
		{
			Params = new CompleteActionParams ();
			Params.app_id = Branch.GetInstance().AppKey;
			Params.device_fingerprint_id = Session.Current.DeviceFingerprintId;
			Params.identity_id = User.Current.Id;
			Params.session_id = Session.Current.Id;
			Params.eventStr = action;
			Params.metadata = metadata;
		}

		override async public Task Execute() {
			try {
				InitClient();
				var settings = new JsonSerializerSettings();
				settings.DefaultValueHandling = DefaultValueHandling.Ignore;
				String inBody = JsonConvert.SerializeObject(Params, settings);
				Branch.GetInstance().Log("Sending complete action request", "WEBAPI");
				HttpResponseMessage response = await Client.PostAsync ("v1/event",
					new StringContent (inBody, System.Text.Encoding.UTF8, "application/json"));
				if (response.StatusCode == HttpStatusCode.OK) {
					Branch.GetInstance().Log("Complete action request completed successfully", "WEBAPI");
				} else {
					Branch.GetInstance().Log("Complete action failed with HTTP error: " + response.ReasonPhrase, "WEBAPI", 6);
				}
			} catch (TaskCanceledException ex) {
				Branch.GetInstance().Log("Complete action timed out", "WEBAPI", 6);
			} catch (Exception ex) {
				Branch.GetInstance().Log("Exception sending complete action request: " + ex.Message, "WEBAPI", 6);
				System.Diagnostics.Debug.WriteLine ("Exception: " + ex);
			}
		}
	}
}
