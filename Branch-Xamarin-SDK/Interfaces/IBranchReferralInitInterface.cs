using System;
using System.Collections.Generic;

namespace BranchXamarinSDK
{
	public interface IBranchReferralInitInterface
	{
		void OnInitFinished(Dictionary<string, object> result, BranchError error);
	}
}

