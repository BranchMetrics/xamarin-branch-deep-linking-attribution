using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;

using Newtonsoft.Json;

namespace BranchXamarinSDK
{
	public class BranchOpenRequest : BranchRequest
	{
		public class OpenParams {
			public string app_id;
			public string device_fingerprint_id;
			public string identity_id;
			public int is_referrable;
			public string app_version;
			public string os_version;
			public string os;
			public string uri_scheme;
			public string link_identifier;
			public string ad_tracking_enabled;

			public OpenParams() {
			}
		}

		readonly OpenParams Params;
		readonly IBranchReferralInitInterface Callback;

		public BranchOpenRequest (
			bool isReferral,
			string appVersion,
			string osVersion,
			string os,
			string uriScheme,
			string addTrackingEnabled,
			IBranchReferralInitInterface callback) : base(BranchRequestType.REQUEST_OPEN)
		{
			Params = new OpenParams ();
			Params.app_id = Branch.GetInstance().AppKey;
			Params.device_fingerprint_id = Session.Current.DeviceFingerprintId;
			Params.identity_id = User.Current.Id;
			Params.is_referrable = isReferral ? 1 : 0;
			Params.app_version = appVersion;
			Params.os_version = osVersion;
			Params.os = os;
			Params.uri_scheme = uriScheme;
			Params.link_identifier = Branch.GetInstance().LinkClickIdentifier;
			Params.ad_tracking_enabled = addTrackingEnabled;
			Callback = callback;
		}

		override async public Task Execute() {
			try {
				InitClient();
				var inSettings = new JsonSerializerSettings();
				inSettings.NullValueHandling = NullValueHandling.Ignore;
				String inBody = JsonConvert.SerializeObject(Params, inSettings);
				Branch.GetInstance().Log("Sending open request", "WEBAPI");
				HttpResponseMessage response = await Client.PostAsync ("v1/open",
					new StringContent (inBody, System.Text.Encoding.UTF8, "application/json"));
 				if (response.StatusCode == HttpStatusCode.OK) {
					String body = await response.Content.ReadAsStringAsync ();
					Branch.GetInstance().Log("Open request completed successfully", "WEBAPI");

					var settings = new JsonSerializerSettings();
					var converterList = new List<JsonConverter>();
					converterList.Add(new DictionaryConverter());
					settings.Converters = converterList;
					Dictionary<string, object> result = JsonConvert.DeserializeObject<Dictionary<string, object>>(body, settings);

					object temp;
					result.TryGetValue("data", out temp);
					Dictionary<string, object> data;
					data = temp as Dictionary<string, object>;
					String dataStr = null;
					if (data == null) {
						if (temp != null) {
							dataStr = temp as String;
							data = JsonConvert.DeserializeObject<Dictionary<string, object>>(dataStr, settings);
						}
					} else {
						dataStr = JsonConvert.SerializeObject(data);
					}

					Branch.GetInstance().UpdateUserAndSession(result, dataStr, false);

					if (Callback != null) {
						Callback.OnInitFinished (result, null);
					}
				} else {
					Branch.GetInstance().Log("Logout failed with HTTP error: " + response.ReasonPhrase, "WEBAPI", 6);
					if (Callback != null) {
						Callback.OnInitFinished (null, new BranchError (response.ReasonPhrase, Convert.ToInt32(response.StatusCode)));
					}
				}
			} catch (TaskCanceledException ex) {
				Branch.GetInstance().Log("Open timed out", "WEBAPI", 6);
			} catch (Exception ex) {
				Branch.GetInstance().Log("Exception sending open: " + ex.Message, "WEBAPI", 6);
				System.Diagnostics.Debug.WriteLine ("Exception: " + ex);
			}
		}
	}
}

