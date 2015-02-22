using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;

using Newtonsoft.Json;

namespace BranchXamarinSDK
{
	public class BranchIdentifyRequest : BranchRequest
	{
		public class IdentityParams : BranchParams {
			public string identity;

			public IdentityParams() {
			}
		}

		readonly String Identity;
		readonly IBranchIdentityInterface Callback;

		public BranchIdentifyRequest (
			string identity,
			IBranchIdentityInterface callback) : base (BranchRequestType.REQUEST_SET_IDENTITY, new IdentityParams())
		{
			Callback = callback;
			var LocalParams = Params as IdentityParams;
			LocalParams.identity = identity;
			Identity = identity;
		}

		override async public Task Execute() {
			try {
				HttpResponseMessage response = await ExecutePost ("v1/profile");
				if (response.StatusCode == HttpStatusCode.OK) {
					String body = await response.Content.ReadAsStringAsync ();
					var settings = new JsonSerializerSettings ();
					var converterList = new List<JsonConverter> ();
					converterList.Add (new DictionaryConverter ());
					settings.Converters = converterList;
					Dictionary<string, object> result = JsonConvert.DeserializeObject<Dictionary<string, object>> (body, settings);

					object temp;
					result.TryGetValue ("referring_params", out temp);
					Dictionary<string, object> data;
					String dataStr = null;
					data = temp as Dictionary<string, object>;
					if (data == null) {
						if (temp != null) {
							dataStr = temp as String;
							data = JsonConvert.DeserializeObject<Dictionary<string, object>> (dataStr, settings);
						}
					} else {
						dataStr = JsonConvert.SerializeObject (data);
					}

					Branch.GetInstance ().UpdateUser (Identity, result, dataStr);

					if (Callback != null) {
						Callback.IdentitySet (Identity, data);
					}
				} else {
					if (Callback != null) {
						Callback.IdentityRequestError (new BranchError (response.ReasonPhrase, Convert.ToInt32 (response.StatusCode)));
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

