using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;

using Newtonsoft.Json;

namespace BranchXamarinSDK
{
	public class BranchValidateReferralCodeRequest : BranchRequest
	{
		readonly String Code;
		readonly IBranchReferralInterface Callback;

		public BranchValidateReferralCodeRequest (string code, IBranchReferralInterface callback) : base(BranchRequestType.REQUEST_VALIDATE_REFERRAL_CODE)
		{
			Code = code;
			Callback = callback;
		}

		override async public Task Execute() {
			try {
				HttpResponseMessage response = await ExecutePost ("v1/referralcode/" + Code);
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
							Callback.ReferralCodeValidated(Code, (code != null));
						}
					}
				} else {
					if (Callback != null) {
						Callback.ReferralRequestError(new BranchError(response.ReasonPhrase, Convert.ToInt32(response.StatusCode)));
					}
				}
			} catch (TaskCanceledException) {
				if (Callback != null) {
					Callback.ReferralRequestError (new BranchError ("Operation timed out"));
				}
			} catch (Exception ex) {
				if (Callback != null) {
					Callback.ReferralRequestError (new BranchError ("Exception: " + ex.Message));
				}
			}
		}
	}
}
