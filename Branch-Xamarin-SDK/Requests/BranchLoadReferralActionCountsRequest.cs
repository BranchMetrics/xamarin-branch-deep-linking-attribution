using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;

using Newtonsoft.Json;

namespace BranchXamarinSDK
{
	public class BranchLoadReferralActionCountsRequest : BranchRequest
	{
		readonly IBranchActionsInterface Callback;

		public BranchLoadReferralActionCountsRequest (IBranchActionsInterface callback) : base(BranchRequestType.REQUEST_LOAD_ACTION_COUNTS)
		{
			Callback = callback;
		}

		override public async Task Execute() {
			try {
				HttpResponseMessage response = await ExecuteGet ("v1/referrals/");
				if (response.StatusCode == HttpStatusCode.OK) {
					String body = await response.Content.ReadAsStringAsync ();

					var settings = new JsonSerializerSettings();
					var converterList = new List<JsonConverter>();
					converterList.Add(new DictionaryConverter());
					settings.Converters = converterList;
					Dictionary<string, object> result = JsonConvert.DeserializeObject<Dictionary<string, object>>(body, settings);

					Branch.GetInstance().TotalActionCounts.Clear();
					Branch.GetInstance().UniqueActionCounts.Clear();
					foreach (string key in result.Keys) {
						object temp;
						result.TryGetValue(key, out temp);
						var counts = temp as Dictionary<string, object>;
						if (counts != null) {
							object totalObj;
							object uniqueObj;
							counts.TryGetValue("total", out totalObj);
							counts.TryGetValue("unique", out uniqueObj);
							if (totalObj != null) {
								int total = 0;
								string totalStr = totalObj as string;
								total = (totalStr != null)?int.Parse((string)totalObj):Convert.ToInt32(totalObj);
								Branch.GetInstance().TotalActionCounts.Add(key, total);
							}
							if (uniqueObj != null) {
								int unique = 0;
								string uniqueStr = uniqueObj as string;
								unique = (uniqueStr != null)?int.Parse((string)uniqueObj):Convert.ToInt32(uniqueObj);
								Branch.GetInstance().UniqueActionCounts.Add(key, unique);
							}
						}
					}

					if (Callback != null) {
						Callback.LoadActionComplete();
					}
				} else {
					if (Callback != null) {
						Callback.ActionRequestError(new BranchError(response.ReasonPhrase, Convert.ToInt32(response.StatusCode)));
					}
				}
			} catch (TaskCanceledException) {
				if (Callback != null) {
					Callback.ActionRequestError (new BranchError ("Operation timed out"));
				}
			} catch (Exception ex) {
				if (Callback != null) {
					Callback.ActionRequestError (new BranchError ("Exception: " + ex.Message));
				}
			}
		}
	}
}

