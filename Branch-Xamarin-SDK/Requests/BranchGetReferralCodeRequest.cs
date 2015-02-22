using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;

using Newtonsoft.Json;

namespace BranchXamarinSDK
{
	public class BranchGetReferralCodeRequest : BranchRequest
	{
		public class ReferralParams : BranchParams {
			public int amount;
			public string prefix;
			public string bucket;
			public int calculation_type;
			public int location;
			public int creation_type = 2;
			public string type = "credit";
			public string expiration;

			public ReferralParams() {
			}
		}

		readonly IBranchReferralInterface Callback;

		public BranchGetReferralCodeRequest (
			int amount,
			string prefix,
			DateTime? expiration,
			string bucket,
			int calculationType,
			int location,
			IBranchReferralInterface callback) : base(BranchRequestType.REQUEST_GET_REFERRAL_CODE, new ReferralParams())
		{
			var LocalParams = Params as ReferralParams;
			LocalParams.amount = amount;
			LocalParams.bucket = bucket ?? "default";
			LocalParams.prefix = prefix;
			LocalParams.calculation_type = calculationType;
			LocalParams.location = location;
			LocalParams.expiration = (expiration == null) ? null : String.Format ("{0:yyyy-MM-dd}", expiration);
			Callback = callback;
		}

		override async public Task Execute() {
			try {
				HttpResponseMessage response = await ExecutePost ("v1/referralcode");
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
							Callback.ReferralCodeCreated(code as string);
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
