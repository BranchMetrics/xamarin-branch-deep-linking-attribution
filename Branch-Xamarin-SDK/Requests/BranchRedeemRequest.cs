using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;

using Newtonsoft.Json;

namespace BranchXamarinSDK
{
	public class BranchRedeemRequest : BranchRequest
	{
		public class RedeemParams : BranchParams {
			public string bucket;
			public int amount;

			public RedeemParams() {
			}
		}

		readonly string Bucket;
		readonly int Amount;
		readonly IBranchRewardsInterface Callback;

		public BranchRedeemRequest (
			string bucket,
			int amount,
			IBranchRewardsInterface callback) : base(BranchRequestType.REQUEST_REDEEM_REWARDS, new RedeemParams())
		{
			var LocalParams = Params as RedeemParams;
			LocalParams.amount = amount;
			LocalParams.bucket = bucket;
			Bucket = bucket;
			Amount = amount;
			Callback = callback;
		}

		override async public Task Execute() {
			try {
				HttpResponseMessage response = await ExecutePost ("v1/redeem");
				if (response.StatusCode == HttpStatusCode.OK) {
					String body = await response.Content.ReadAsStringAsync ();
					Dictionary<string, object> result = JsonConvert.DeserializeObject<Dictionary<string, object>>(body);
					if (Callback != null) {
						Callback.RewardsRedeemed(Bucket, Amount);
					}
				} else {
					if (Callback != null) {
						Callback.RewardsRequestError(new BranchError(response.ReasonPhrase, Convert.ToInt32(response.StatusCode)));
					}
				}
			} catch (TaskCanceledException) {
				if (Callback != null) {
					Callback.RewardsRequestError(new BranchError("Operation timed out"));
				}
			} catch (Exception ex) {
				if (Callback != null) {
					Callback.RewardsRequestError(new BranchError("Exception: " + ex.Message));
				}
			}
		}
	}
}
