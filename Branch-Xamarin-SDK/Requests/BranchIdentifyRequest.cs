using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;

using Newtonsoft.Json;

namespace BranchXamarinSDK
{
	public class BranchIdentifyRequest : BranchRequest
	{
		public class IdentifyParams {
			public string app_id;
			public string device_fingerprint_id;
			public string identity_id;
			public string session_id;
			public string identity;

			public IdentifyParams() {
			}
		}

		readonly IBranchReferralInitInterface Callback;
		readonly IdentifyParams Params;


		public BranchIdentifyRequest (
			string identity,
			IBranchReferralInitInterface callback) : base (BranchRequestType.REQUEST_IDENTIFY)
		{
			Callback = callback;
			Params = new IdentifyParams ();
			Params.app_id = Branch.GetInstance().AppKey;
			Params.device_fingerprint_id = Session.Current.DeviceFingerprintId;
			Params.identity_id = User.Current.Id;
			Params.session_id = Session.Current.Id;
			Params.identity = identity;
		}

		override async public Task Execute() {
			try {
				InitClient();
				String inBody = JsonConvert.SerializeObject(Params);
				Branch.GetInstance().Log("Sending identity request", "WEBAPI");
				HttpResponseMessage response = await Client.PostAsync ("v1/profile",
					new StringContent (inBody, System.Text.Encoding.UTF8, "application/json"));
				if (response.StatusCode == HttpStatusCode.OK) {
					String body = await response.Content.ReadAsStringAsync ();
					Branch.GetInstance().Log("Identity request completed successfully", "WEBAPI");

					var settings = new JsonSerializerSettings();
					var converterList = new List<JsonConverter>();
					converterList.Add(new DictionaryConverter());
					settings.Converters = converterList;
					Dictionary<string, object> result = JsonConvert.DeserializeObject<Dictionary<string, object>>(body, settings);

					object temp;
					result.TryGetValue("referring_params", out temp);
					Dictionary<string, object> data;
					String dataStr = null;
					data = temp as Dictionary<string, object>;
					if (data == null) {
						if (temp != null) {
							dataStr = temp as String;
							data = JsonConvert.DeserializeObject<Dictionary<string, object>>(dataStr, settings);
						}
					} else {
						dataStr = JsonConvert.SerializeObject(data);
					}

					Branch.GetInstance().UpdateUser(Params.identity, result, dataStr);

					if (Callback != null) {
						Callback.OnInitFinished (data, null);
					}
				} else {
					Branch.GetInstance().Log("Identity failed with HTTP error: " + response.ReasonPhrase, "WEBAPI", 6);
					if (Callback != null) {
						Callback.OnInitFinished (null, new BranchError (response.ReasonPhrase, Convert.ToInt32(response.StatusCode)));
					}
				}
			} catch (TaskCanceledException ex) {
				Branch.GetInstance().Log("Identity timed out", "WEBAPI", 6);
				if (Callback != null) {
					Callback.OnInitFinished(null, new BranchError("Operation timed out", 1));
				}
			} catch (Exception ex) {
				Branch.GetInstance().Log("Exception sending Identity request: " + ex.Message, "WEBAPI", 6);
				System.Diagnostics.Debug.WriteLine ("Exception: " + ex);
			}
		}
	}
}

