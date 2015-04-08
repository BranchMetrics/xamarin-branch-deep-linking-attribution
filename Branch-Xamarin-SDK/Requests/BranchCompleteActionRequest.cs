using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;

using Newtonsoft.Json;

namespace BranchXamarinSDK
{
	public class BranchCompleteActionRequest : BranchRequest
	{
		public class CompleteActionParams : BranchParams {
			[JsonProperty("event")]
			public string eventStr;
			public Dictionary<string, object> metadata;

			public CompleteActionParams() {
			}
		}

		private IBranchActionsInterface Callback;

		public BranchCompleteActionRequest (
			string action,
			Dictionary<string, object> metadata,
			IBranchActionsInterface callback) : base(BranchRequestType.REQUEST_COMPLETE_ACTION, new CompleteActionParams())
		{
			var LocalParams = Params as CompleteActionParams;
			LocalParams.eventStr = action;
			LocalParams.metadata = metadata;
			Callback = callback;
		}

		override async public Task Execute() {
			InitBaseParams ();

			try {
				HttpResponseMessage response = await ExecutePost ("v1/event");
				if (response.StatusCode == HttpStatusCode.OK) {
					if (Callback != null) {
						Callback.ActionComplete(((CompleteActionParams)Params).eventStr);
					}
				} else {
					if (Callback != null) {
						Callback.ActionRequestError(new BranchError(response.ReasonPhrase, Convert.ToInt32(response.StatusCode)));
					}
				}
			} catch (TaskCanceledException) {
				if (Callback != null) {
					Callback.ActionRequestError(new BranchError("Operation timed out"));
				}
			} catch (Exception ex) {
				if (Callback != null) {
					Callback.ActionRequestError(new BranchError("Exception: " + ex.Message));
				}
			}
		}
	}
}
