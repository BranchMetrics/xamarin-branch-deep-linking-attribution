using System;
using System.Net.Http;
using System.Threading.Tasks;

using Newtonsoft.Json;

namespace BranchXamarinSDK
{
	public class BranchCloseRequest : BranchRequest
	{
		readonly IBranchSessionInterface Callback;

		public BranchCloseRequest (IBranchSessionInterface callback = null) : base (BranchRequestType.REQUEST_CLOSE)
		{
			Callback = callback;
		}

		override async public Task Execute() {
			try {
				HttpResponseMessage response = await ExecutePost("v1/close");
				if (response.StatusCode == System.Net.HttpStatusCode.OK) {
					if (Callback != null) {
						Callback.CloseSessionComplete();
					}
				} else {
					if (Callback != null) {
						Callback.SessionRequestError(new BranchError(response.ReasonPhrase, Convert.ToInt32(response.StatusCode)));
					}
				}
			} catch (TaskCanceledException) {
				if (Callback != null) {
					Callback.SessionRequestError (new BranchError ("Operation timed out"));
				}
			} catch (Exception ex) {
				if (Callback != null) {
					Callback.SessionRequestError (new BranchError ("Exception: " + ex.Message));
				}
			}
		}
	}
}

