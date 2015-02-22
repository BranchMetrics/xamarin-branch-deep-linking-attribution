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
		public class OpenParams : BranchParams {
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

		readonly IBranchSessionInterface Callback;

		public BranchOpenRequest (
			bool isReferral,
			string appVersion,
			string osVersion,
			string os,
			string uriScheme,
			string addTrackingEnabled,
			IBranchSessionInterface callback) : base(BranchRequestType.REQUEST_OPEN, new OpenParams())
		{
			var LocalParams = Params as OpenParams;
			LocalParams.is_referrable = isReferral ? 1 : 0;
			LocalParams.app_version = appVersion;
			LocalParams.os_version = osVersion;
			LocalParams.os = os;
			LocalParams.uri_scheme = uriScheme;
			LocalParams.link_identifier = Branch.GetInstance().LinkClickIdentifier;
			LocalParams.ad_tracking_enabled = addTrackingEnabled;

			// These are not used by OPEN...
			Params.session_id = null;
			Params.link_click_id = null;

			Callback = callback;
		}

		override async public Task Execute() {
			try {
				HttpResponseMessage response = await ExecutePost ("v1/open");
 				if (response.StatusCode == HttpStatusCode.OK) {
					String body = await response.Content.ReadAsStringAsync ();
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
						Callback.InitSessionComplete(data);
					}
				} else {
					if (Callback != null) {
						Callback.SessionRequestError(new BranchError(response.ReasonPhrase, Convert.ToInt32(response.StatusCode)));
					}
				}
			} catch (TaskCanceledException) {
				if (Callback != null) {
					Callback.SessionRequestError (new BranchError ("Operation timed out"));
				}
			} catch (Exception ex) {
				if (Callback != null) {
					Callback.SessionRequestError (new BranchError ("Exception: " + ex.Message));
				}
			}
		}
	}
}

