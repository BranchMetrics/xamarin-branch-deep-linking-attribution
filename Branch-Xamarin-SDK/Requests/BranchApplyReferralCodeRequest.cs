using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;

using Newtonsoft.Json;

namespace BranchXamarinSDK
{
	public class BranchApplyReferralCodeRequest : BranchRequest
	{
		readonly String Code;
		readonly IBranchReferralInterface Callback;

		public BranchApplyReferralCodeRequest (string code, IBranchReferralInterface callback) : base(BranchRequestType.REQUEST_APPLY_REFERRAL_CODE)
		{
			Code = code;
			Callback = callback;
		}

		override async public Task Execute() {
			InitBaseParams ();
			try {
				HttpResponseMessage response = await ExecutePost ("v1/applycode/" + Code);
				if (response.StatusCode == HttpStatusCode.OK) {
					if (Callback != null) {
						String body = await response.Content.ReadAsStringAsync();

						var settings = new JsonSerializerSettings();
						var converterList = new List<JsonConverter>();
						converterList.Add(new DictionaryConverter());
						settings.Converters = converterList;
						Dictionary<string, object> result = JsonConvert.DeserializeObject<Dictionary<string, object>>(body, settings);

						object code;
						result.TryGetValue("referral_code", out code);

						if (Callback != null) {
							if (code != null) {
								Callback.ReferralCodeApplied(Code);
							} else {
								Callback.ReferralRequestError(new BranchError("Invalid Code Applied"));
							}
						}
					}
				} else {
					if (Callback != null) {
						Callback.ReferralRequestError(new BranchError(response.ReasonPhrase, Convert.ToInt32(response.StatusCode)));
					}
				}
			} catch (TaskCanceledException) {
				if (Callback != null) {
					Callback.ReferralRequestError (new BranchError ("Operation timed out", 1));
				}
			} catch (Exception ex) {
				if (Callback != null) {
					Callback.ReferralRequestError (new BranchError ("Exception: " + ex.Message));
				}
			}
		}
	}
}
