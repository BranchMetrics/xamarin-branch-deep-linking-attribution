using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;

using Newtonsoft.Json;

namespace BranchXamarinSDK
{
	public class BranchGetCreditHistoryRequest : BranchRequest
	{
		readonly String Bucket;
		readonly String AfterId;
		readonly int Length;
		readonly int Direction;
		readonly IBranchRewardsInterface Callback;

		public BranchGetCreditHistoryRequest (
			string bucket,
			string afterId,
			int length,
			int direction,
			IBranchRewardsInterface callback) : base(BranchRequestType.REQUEST_GET_CREDIT_HISTORY)
		{
			Bucket = bucket;
			AfterId = afterId;
			Length = length;
			Direction = direction;
			Callback = callback;
		}

		override async public Task Execute() {
			InitBaseParams ();

			try {
				String queryStr =
					"identity_id=" + Params.identity_id + "&" +
					"device_fingerprint_id=" + Params.device_fingerprint_id + "&" +
					"session_id=" + Params.session_id + "&" +
					"length=" + Length + "&" +
					"direction=" + Direction;
				if (!String.IsNullOrWhiteSpace(Bucket)) {
					queryStr += "&bucket=" + Bucket;
				}
				if (!String.IsNullOrWhiteSpace(AfterId)) {
					queryStr += "&begin_after_id=" + AfterId;
				}
				if (!String.IsNullOrWhiteSpace(Params.link_click_id)) {
					queryStr += "&" + "link_click_id=" + Params.link_click_id;
				}
				HttpResponseMessage response = await ExecuteGet ("v1/credithistory", queryStr, true);
				if (response.StatusCode == HttpStatusCode.OK) {
					String body = await response.Content.ReadAsStringAsync ();
					List<CreditHistoryEntry> entries = JsonConvert.DeserializeObject<List<CreditHistoryEntry>>(body);
					if (Callback != null) {
						Callback.CreditHistory(entries);
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
