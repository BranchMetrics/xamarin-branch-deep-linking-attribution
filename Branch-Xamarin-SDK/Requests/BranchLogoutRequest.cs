using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;

using Newtonsoft.Json;

namespace BranchXamarinSDK
{
	public class BranchLogoutRequest: BranchRequest
	{
		readonly IBranchIdentityInterface Callback;

		public BranchLogoutRequest (IBranchIdentityInterface callback = null) : base (BranchRequestType.REQUEST_LOGOUT)
		{
			Callback = callback;
		}

		override async public Task Execute() {
			try {
				HttpResponseMessage response = await ExecutePost ("v1/logout");
				if (response.StatusCode == HttpStatusCode.OK) {
					String body = await response.Content.ReadAsStringAsync ();
					var settings = new JsonSerializerSettings();
					var converterList = new List<JsonConverter>();
					converterList.Add(new DictionaryConverter());
					settings.Converters = converterList;
					Dictionary<string, object> result = JsonConvert.DeserializeObject<Dictionary<string, object>>(body, settings);
					Branch.GetInstance().UpdateUserAndSession(result, null, true); // Passing true so that both first and latest data gets cleared.
					Branch.GetInstance().TotalActionCounts.Clear();
					Branch.GetInstance().UniqueActionCounts.Clear();
					if (Callback != null) {
						Callback.LogoutComplete();
					}
				} else {
					if (Callback != null) {
						Callback.IdentityRequestError(new BranchError(response.ReasonPhrase, Convert.ToInt32(response.StatusCode)));
					}
				}
			} catch (TaskCanceledException) {
				if (Callback != null) {
					Callback.IdentityRequestError (new BranchError ("Operation timed out"));
				}
			} catch (Exception ex) {
				if (Callback != null) {
					Callback.IdentityRequestError (new BranchError ("Exception: " + ex.Message));
				}
			}
		}
	}
}

