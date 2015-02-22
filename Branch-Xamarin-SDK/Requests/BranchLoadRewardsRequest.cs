using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;

using Newtonsoft.Json;

namespace BranchXamarinSDK
{
	public class BranchLoadRewardsRequest : BranchRequest
	{
		readonly IBranchRewardsInterface Callback;

		public BranchLoadRewardsRequest (IBranchRewardsInterface callback) : base(BranchRequestType.REQUEST_LOAD_REWARDS)
		{
			Callback = callback;
		}

		override public async Task Execute() {
			try {
				HttpResponseMessage response = await ExecuteGet ("v1/credits/");
				if (response.StatusCode == HttpStatusCode.OK) {
					String body = await response.Content.ReadAsStringAsync ();
					Dictionary<string, int> result = JsonConvert.DeserializeObject<Dictionary<string, int>>(body);
					Branch.GetInstance().Credits.Clear ();
					foreach (string key in result.Keys) {
						int temp;
						result.TryGetValue(key, out temp);
						Branch.GetInstance().Credits.Add(key, temp);
					}

					if (Callback != null) {
						Callback.RewardsLoaded();
					}
				} else {
					if (Callback != null) {
						Callback.RewardsRequestError(new BranchError(response.ReasonPhrase, Convert.ToInt32(response.StatusCode)));
					}
				}
			} catch (TaskCanceledException) {
				if (Callback != null) {
					Callback.RewardsRequestError (new BranchError ("Operation timed out"));
				}
			} catch (Exception ex) {
				if (Callback != null) {
					Callback.RewardsRequestError (new BranchError ("Exception: " + ex.Message));
				}
			}
		}
	}
}

