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
		readonly BranchLinkData Data;
		readonly IBranchGetUrlInterface Callback;

		public BranchGetUrlRequest (
			BranchLinkData data,
			IBranchGetUrlInterface callback) : base(BranchRequestType.REQUEST_GET_URL)
		{
			Data = data;
			Data.app_id = Branch.GetInstance().AppKey;
			Data.session_id = Session.Current.Id;
			Data.identity_id = User.Current.Id;
			Data.device_fingerprint_id = Session.Current.DeviceFingerprintId;
			Callback = callback;
		}

		override async public Task Execute() {
			try {
				InitClient();
				var settings = new JsonSerializerSettings();
				settings.DefaultValueHandling = DefaultValueHandling.Ignore;
				String inBody = JsonConvert.SerializeObject(Data, settings);
				Branch.GetInstance().Log("Sending get URL request", "WEBAPI");
				HttpResponseMessage response = await Client.PostAsync ("v1/url",
					new StringContent (inBody, System.Text.Encoding.UTF8, "application/json"));
				if (response.StatusCode == HttpStatusCode.OK) {
					if (Callback != null) {
						String body = await response.Content.ReadAsStringAsync();
						Branch.GetInstance().Log("Get URL completed successfully", "WEBAPI");
						Dictionary<String, object> result = JsonConvert.DeserializeObject<Dictionary<String, object>>(body);
						Uri uri = null;
						if (result.ContainsKey("url")) {
							object temp;
							result.TryGetValue("url", out temp);
							if (temp != null) {
								uri = new Uri(temp as String);
							}
						}

						if (uri != null) {
							Branch.GetInstance().LinkDataCache.Add(Data, uri);
						}

						Callback.Finished(uri, null);
					}
				} else {
					Branch.GetInstance().Log("Get URL failed with HTTP error: " + response.ReasonPhrase, "WEBAPI", 6);
					if (Callback != null) {
						Callback.Finished(null, new BranchError(response.ReasonPhrase, Convert.ToInt32(response.StatusCode)));
					}
				}
			} catch (TaskCanceledException ex) {
				Branch.GetInstance().Log("Get URL timed out", "WEBAPI", 6);
				if (Callback != null) {
					Callback.Finished (null, new BranchError ("Operation timed out", 1));
				}
			} catch (Exception ex) {
				Branch.GetInstance().Log("Exception sending get URL: " + ex.Message, "WEBAPI", 6);
				System.Diagnostics.Debug.WriteLine ("Exception: " + ex);
			}
		}
	}
}

