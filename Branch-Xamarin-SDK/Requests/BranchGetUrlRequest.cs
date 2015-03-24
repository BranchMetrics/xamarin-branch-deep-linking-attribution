using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;

using Newtonsoft.Json;

namespace BranchXamarinSDK
{
	public class BranchGetUrlRequest : BranchRequest
	{
		public class UrlParams : BranchParams
		{
			public ICollection<String> tags;
			public string alias;
			public int type;
			public string channel;
			public string feature;
			public string stage;
			public string data;

			public UrlParams(BranchLinkData inData) {
				tags = inData.tags;
				type = inData.type;
				channel = inData.channel;
				feature = inData.feature;
				stage = inData.stage;
				data = inData.data;
			}
		}

		readonly BranchLinkData Data;
		readonly IBranchUrlInterface Callback;

		public BranchGetUrlRequest (
			BranchLinkData data,
			IBranchUrlInterface callback) : base(BranchRequestType.REQUEST_GET_URL, new UrlParams(data))
		{
			Data = data;
			Callback = callback;
		}

		override async public Task Execute() {
			InitBaseParams ();
			try {
				HttpResponseMessage response = await ExecutePost ("v1/url");
				if (response.StatusCode == HttpStatusCode.OK) {
					if (Callback != null) {
						String body = await response.Content.ReadAsStringAsync();
						Dictionary<String, object> result = JsonConvert.DeserializeObject<Dictionary<String, object>>(body);
						Uri uri = null;
						if (result.ContainsKey("url")) {
							object temp;
							result.TryGetValue("url", out temp);
							if (temp != null) {
								uri = new Uri(temp as String);
							}
						}

						if (uri != null) {
							Branch.GetInstance().LinkDataCache.Add(Data, uri);
						}

						Callback.ReceivedUrl(uri);
					}
				} else {
					if (Callback != null) {
						Callback.UrlRequestError(new BranchError(response.ReasonPhrase, Convert.ToInt32(response.StatusCode)));
					}
				}
			} catch (TaskCanceledException) {
				if (Callback != null) {
					Callback.UrlRequestError (new BranchError ("Operation timed out"));
				}
			} catch (Exception ex) {
				if (Callback != null) {
					Callback.UrlRequestError (new BranchError ("Exception: " + ex.Message));
				}
			}
		}
	}
}

