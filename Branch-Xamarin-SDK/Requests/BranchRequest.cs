using System;
using System.Net.Http;
using System.Threading.Tasks;

namespace BranchXamarinSDK
{
	public enum BranchRequestType {
		REQUEST_INSTALL,
		REQUEST_OPEN,
		REQUEST_CLOSE,
		REQUEST_IDENTIFY,
		REQUEST_LOGOUT,
		REQUEST_GET_URL
	};

	abstract public class BranchRequest
	{

		public BranchRequestType Type { get; set; }

		protected HttpClient Client;

		protected BranchRequest (BranchRequestType type)
		{
			Type = type;
		}

		abstract public Task Execute();

		protected void InitClient() {
			Client = new HttpClient ();
			Client.Timeout = Settings.GetSettings ().Timeout;
			Client.BaseAddress = Constants.BASE_URI;
		}
	}
}

