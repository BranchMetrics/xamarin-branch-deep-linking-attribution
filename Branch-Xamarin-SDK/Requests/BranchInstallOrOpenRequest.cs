using System;
using System.Threading.Tasks;

using System.Net.Http;

namespace BranchXamarinSDK
{
	class BranchInstallOrOpenRequest : BranchRequest
	{
		IBranchReferralInitInterface Callback;

		public BranchInstallOrOpenRequest (IBranchReferralInitInterface callback, bool isInstall) : base(isInstall?BranchRequestType.REQUEST_INSTALL:BranchRequestType.REQUEST_OPEN)
		{
			Callback = callback;
		}

		override async public Task Execute() {
			HttpClient client = new HttpCliet ();
		}
	}
}

