using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;

using Newtonsoft.Json;

namespace BranchXamarinSDK
{
	public class BranchGetUrlRequest : BranchRequest
	{
		BranchLinkData Data;
		IBranchGetUrlInterface Callback;

		public BranchGetUrlRequest (
			string appId,
			string sessionId,
			string identityId,
			string deviceFingerprintId,
			BranchLinkData data, 
			IBranchGetUrlInterface callback) : base(BranchRequestType.REQUEST_GET_URL)
		{
			Data = data;
			Data.app_id = appId;
			Data.session_id = sessionId;
			Data.identity_id = identityId;
			Data.device_fingerprint_id = deviceFingerprintId;
			Callback = callback;
		}

		override async public Task Execute() {
			try {
				InitClient();
				JsonSerializerSettings settings = new JsonSerializerSettings();
				settings.DefaultValueHandling = DefaultValueHandling.Ignore;
				String inBody = JsonConvert.SerializeObject(Data, settings);
				HttpResponseMessage response = await Client.PostAsync ("v1/url",
					new StringContent (inBody, System.Text.Encoding.UTF8, "application/json"));
				if (response.StatusCode == HttpStatusCode.OK) {
					if (Callback != null) {
						String body = await response.Content.ReadAsStringAsync();
						Dictionary<String, object> result = JsonConvert.DeserializeObject<Dictionary<String, object>>(body);
						Uri uri = null;
						if (result.ContainsKey("url")) {
							object temp;
							result.TryGetValue("url", out temp);
							if ((temp != null) && (temp is String)) {
								uri = new Uri((String)temp);
							}
						}

						if (uri != null) {
							try {
								Branch.GetInstance().UpdateBranchLinkDataCache(uri, Data);
							} catch (Exception ex) {
								System.Diagnostics.Debug.WriteLine("Exception : " + ex.Message);
							}
						}

						Callback.Finished(uri, null);
					}
				} else {
					if (Callback != null) {
						Callback.Finished(null, new BranchError(response.ReasonPhrase, System.Convert.ToInt32(response.StatusCode)));
					}
				}

			} catch (Exception ex) {
				System.Diagnostics.Debug.WriteLine ("Exception: " + ex);
			}
		}
	}
}

