﻿using System;
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
				HttpClient client = new HttpClient ();
				client.BaseAddress = Constants.BASE_URI;
				String inBody = JsonConvert.SerializeObject(Data);
				HttpResponseMessage response = await client.PostAsync ("v1/url",
					new StringContent (inBody, System.Text.Encoding.UTF8, "application/json"));
				if (response.StatusCode == HttpStatusCode.OK) {
					if (Callback != null) {
						String body = await response.Content.ReadAsStringAsync();
						Dictionary<String, dynamic> result = JsonConvert.DeserializeObject<Dictionary<String, dynamic>>(body);
						Uri uri = null;
						if (result.ContainsKey("url")) {
							dynamic temp;
							result.TryGetValue("url", out temp);
							if (temp != null) {
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

