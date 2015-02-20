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
		IBranchCompletionCallback Callback;

		public BranchLoadReferralActionCountsRequest (IBranchCompletionCallback callback) : base(BranchRequestType.REQUEST_LOAD_ACTION_COUNTS)
		{
			Callback = callback;
		}

		override public async Task Execute() {
			try {
				InitClient();
				Branch.GetInstance ().Log ("Sending load action counts request", "WEBAPI");
				HttpResponseMessage response = await Client.GetAsync("v1/referrals/" + User.Current.Id + "?sdk=xamarin" + Constants.SDK_VERSION);
				if (response.StatusCode == System.Net.HttpStatusCode.OK) {
					Branch.GetInstance().Log("Load action counts request completed successfully", "WEBAPI");
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
								if (totalStr != null) {
									total = int.Parse((string)totalObj);
								} else {
									total = Convert.ToInt32(totalObj);
								}
								Branch.GetInstance().TotalActionCounts.Add(key, total);
							}
							if (uniqueObj != null) {
								int unique = 0;
								string uniqueStr = uniqueObj as string;
								if (uniqueStr != null) {
									unique = int.Parse((string)uniqueObj);
								} else {
									unique = Convert.ToInt32(uniqueObj);
								}
								Branch.GetInstance().UniqueActionCounts.Add(key, unique);
							}
						}
					}

					if (Callback != null) {
						Callback.RequestComplete(null);
					}
				} else {
					Branch.GetInstance().Log("Load action counts failed with HTTP error: " + response.ReasonPhrase, "WEBAPI", 6);
					if (Callback != null) {
						Callback.RequestComplete(new BranchError("Load action counts request failed with HTTP error: " + response.ReasonPhrase));
					}
				}
				System.Diagnostics.Debug.WriteLine("Load action counts completed with status: " + response.ReasonPhrase);
			} catch (TaskCanceledException ex) {
				if (Callback != null) {
					Callback.RequestComplete(new BranchError("Operation timed out", 1));
				}
				Branch.GetInstance().Log("Load action counts request timed out", "WEBAPI", 6);
			} catch (Exception ex) {
				if (Callback != null) {
					Callback.RequestComplete(new BranchError("Execption: " + ex.Message));
				}
				Branch.GetInstance().Log("Exception sending load action counts: " + ex.Message, "WEBAPI", 6);
				System.Diagnostics.Debug.WriteLine ("Exception: " + ex);
			}
		}
	}
}

