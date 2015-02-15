using System;
using System.Collections.Generic;
using System.Net;
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

		CloseParams Params;


		public BranchCloseRequest (
			string appId,
			string deviceFingerprintId,
			string identityId,
			string sessionId) : base (BranchRequestType.REQUEST_CLOSE)
		{
			Params = new CloseParams ();
			Params.app_id = appId;
			Params.device_fingerprint_id = deviceFingerprintId;
			Params.identity_id = identityId;
			Params.session_id = sessionId;
		}

		override async public Task Execute() {
			try {
				InitClient();
				String inBody = JsonConvert.SerializeObject(Params);
				HttpResponseMessage response = await Client.PostAsync ("v1/close",
					new StringContent (inBody, System.Text.Encoding.UTF8, "application/json"));
				System.Diagnostics.Debug.WriteLine("Close session completed with status: " + response.ReasonPhrase);
			} catch (Exception ex) {
				System.Diagnostics.Debug.WriteLine ("Exception: " + ex);
			}
		}
	}
}

