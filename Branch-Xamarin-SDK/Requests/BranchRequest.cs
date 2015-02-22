using System;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;

using Newtonsoft.Json;

namespace BranchXamarinSDK
{
	public enum BranchRequestType {
		REQUEST_INSTALL,
		REQUEST_OPEN,
		REQUEST_CLOSE,
		REQUEST_SET_IDENTITY,
		REQUEST_LOGOUT,
		REQUEST_GET_URL,
		REQUEST_COMPLETE_ACTION,
		REQUEST_LOAD_ACTION_COUNTS,
		REQUEST_GET_REFERRAL_CODE,
		REQUEST_VALIDATE_REFERRAL_CODE,
		REQUEST_APPLY_REFERRAL_CODE,
		REQUEST_LOAD_REWARDS,
		REQUEST_REDEEM_REWARDS,
		REQUEST_GET_CREDIT_HISTORY
	};

	abstract public class BranchRequest
	{
		public class BranchParams
		{
			public string app_id;
			public string device_fingerprint_id;
			public string identity_id;
			public string session_id;
			public string link_click_id;
			public string sdk;

			public BranchParams() {
			}
		}

		public BranchRequestType Type { get; set; }

		protected BranchParams Params;

		protected BranchRequest (BranchRequestType type, BranchParams p = null)
		{
			Params = p;
			Type = type;

			if (Params == null) {
				Params = new BranchParams ();
			}

			Branch branch = Branch.GetInstance ();
			Params.app_id = branch.AppKey;
			Params.device_fingerprint_id = branch.DeviceFingerprintId;
			Params.identity_id = branch.IdentityId;
			Params.session_id = branch.SessionId;
			Params.link_click_id = branch.LinkClickId;
			Params.sdk = "xamarin" + Constants.SDK_VERSION;
		}

		abstract public Task Execute();

		async protected Task<HttpResponseMessage> ExecuteGet(String url, String queryString = null, bool noId = false) {
			var client = new HttpClient ();
			client.Timeout = Branch.GetInstance().Timeout;
			client.BaseAddress = Constants.BASE_URI;
			String query = "?sdk=" + Params.sdk;
			if (queryString != null) {
				query += "&" + queryString;
			}
			try {
				if (Branch.GetInstance().Debug) {
					Branch.GetInstance().Log("Sending " + StringForType() + " request", "API");
				}
				String newUrl = url;
				if (!noId) {
					if (!newUrl.EndsWith("/")) {
						newUrl += "/";
					}
					newUrl += Params.identity_id;
				}
				HttpResponseMessage message = await client.GetAsync(newUrl + query);
				if (message.StatusCode == HttpStatusCode.OK) {
					if (Branch.GetInstance().Debug) {
						Branch.GetInstance().Log(StringForType() + " request completed successfully", "API");
					}
				} else {
					if (Branch.GetInstance().Debug) {
						Branch.GetInstance().Log(StringForType() + " request failed with HTTP error: " + message.ReasonPhrase, "API");
					}
				}
				return message;
			} catch (TaskCanceledException) {
				if (Branch.GetInstance().Debug) {
					Branch.GetInstance().Log(StringForType() + " request timed out", "API");
				}
				throw;
			} catch (Exception ex) {
				if (Branch.GetInstance().Debug) {
					Branch.GetInstance().Log(StringForType() + " request failed with exception: " + ex.Message, "API");
				}
				throw;
			}
		}

		async protected Task<HttpResponseMessage> ExecutePost(String url) {
			var client = new HttpClient ();
			client.Timeout = Branch.GetInstance().Timeout;
			client.BaseAddress = Constants.BASE_URI;
			var inSettings = new JsonSerializerSettings();
			inSettings.NullValueHandling = NullValueHandling.Ignore;
			String inBody = JsonConvert.SerializeObject(Params, inSettings);
			try {
				if (Branch.GetInstance().Debug) {
					Branch.GetInstance().Log("Sending " + StringForType() + " request", "API");
				}
				HttpResponseMessage message = await client.PostAsync (url,
					new StringContent (inBody, System.Text.Encoding.UTF8, "application/json"));
				if (message.StatusCode == HttpStatusCode.OK) {
					if (Branch.GetInstance().Debug) {
						Branch.GetInstance().Log(StringForType() + " request completed successfully", "API");
					}
				} else {
					if (Branch.GetInstance().Debug) {
						Branch.GetInstance().Log(StringForType() + " request failed with HTTP error: " + message.ReasonPhrase, "API");
					}
				}
				return message;
			} catch (TaskCanceledException) {
				if (Branch.GetInstance().Debug) {
					Branch.GetInstance().Log(StringForType() + " request timed out", "API");
				}
				throw;
			} catch (Exception ex) {
				if (Branch.GetInstance().Debug) {
					Branch.GetInstance().Log(StringForType() + " request failed with exception: " + ex.Message, "API");
				}
				throw;
			}
		}

		protected String StringForType() {
			String typeStr = "Unknown";
			switch (Type) {
			case BranchRequestType.REQUEST_INSTALL:
				typeStr = "Install";
				break;
			case BranchRequestType.REQUEST_OPEN:
				typeStr = "Open";
				break;
			case BranchRequestType.REQUEST_CLOSE:
				typeStr = "Close";
				break;
			case BranchRequestType.REQUEST_SET_IDENTITY:
				typeStr = "Set identity";
				break;
			case BranchRequestType.REQUEST_LOGOUT:
				typeStr = "Logout";
				break;
			case BranchRequestType.REQUEST_GET_URL:
				typeStr = "Get url";
				break;
			case BranchRequestType.REQUEST_COMPLETE_ACTION:
				typeStr = "Complete action";
				break;
			case BranchRequestType.REQUEST_LOAD_ACTION_COUNTS:
				typeStr = "Load action counts";
				break;
			case BranchRequestType.REQUEST_GET_REFERRAL_CODE:
				typeStr = "Get referral code";
				break;
			case BranchRequestType.REQUEST_VALIDATE_REFERRAL_CODE:
				typeStr = "Validate referral code";
				break;
			case BranchRequestType.REQUEST_APPLY_REFERRAL_CODE:
				typeStr = "Apply referral code";
				break;
			case BranchRequestType.REQUEST_LOAD_REWARDS:
				typeStr = "Load rewards";
				break;
			case BranchRequestType.REQUEST_REDEEM_REWARDS:
				typeStr = "Redeem rewards";
				break;
			case BranchRequestType.REQUEST_GET_CREDIT_HISTORY:
				typeStr = "Get credit history";
				break;
			}
			return typeStr;
		}
	}
}

