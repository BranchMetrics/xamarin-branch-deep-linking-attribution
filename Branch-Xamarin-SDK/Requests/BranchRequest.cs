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

		protected BranchRequest (BranchRequestType type)
		{
			Type = type;
		}

		abstract public Task Execute();
	}
}

