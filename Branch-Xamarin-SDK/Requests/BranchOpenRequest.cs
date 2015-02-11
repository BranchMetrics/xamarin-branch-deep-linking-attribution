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
			public bool debug;
			public string uri_scheme;

			public OpenParams() {
			}
		}

		OpenParams Params;
		IBranchReferralInitInterface Callback;

		public BranchOpenRequest (
			string appId,
			string deviceFingerprintId,
			string identityId,
			bool isReferral,
			string appVersion,
			string osVersion,
			string os,
			string uriScheme,
			bool debug,
			IBranchReferralInitInterface callback) : base(BranchRequestType.REQUEST_OPEN)
		{
			Params = new OpenParams ();
			Params.app_id = appId;
			Params.device_fingerprint_id = deviceFingerprintId;
			Params.identity_id = identityId;
			Params.is_referrable = isReferral ? 1 : 0;
			Params.app_version = appVersion;
			Params.os_version = osVersion;
			Params.os = os;
			Params.uri_scheme = uriScheme;
			Params.debug = debug;
			Callback = callback;
		}

		override async public Task Execute() {
			try {
				HttpClient client = new HttpClient ();
				client.BaseAddress = Constants.BASE_URI;
				String inBody = JsonConvert.SerializeObject(Params);
				HttpResponseMessage response = await client.PostAsync ("v1/open",
					new StringContent (inBody, System.Text.Encoding.UTF8, "application/json"));
				if (response.StatusCode == HttpStatusCode.OK) {
					String body = await response.Content.ReadAsStringAsync ();
					Dictionary<string, dynamic> result = JsonConvert.DeserializeObject<Dictionary<string, dynamic>> (body);

					dynamic data;
					result.TryGetValue("data", out data);

					Branch.GetInstance().UpdateUserAndSession(result, false);

					if (Callback != null) {
						Callback.OnInitFinished (result, null);
					}
				} else {
					if (Callback != null) {
						Callback.OnInitFinished (null, new BranchError (response.ReasonPhrase, System.Convert.ToInt32(response.StatusCode)));
					}
				}
			} catch (Exception ex) {
				System.Diagnostics.Debug.WriteLine ("Exception: " + ex);
			}
		}
	}
}

