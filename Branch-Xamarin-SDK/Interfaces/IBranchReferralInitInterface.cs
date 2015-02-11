using System;
using System.Collections.Generic;

namespace BranchXamarinSDK
{
	public interface IBranchReferralInitInterface
	{
		void OnInitFinished(Dictionary<string, dynamic> result, BranchError error);
	}
}

