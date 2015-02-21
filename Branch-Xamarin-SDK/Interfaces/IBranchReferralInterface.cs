using System;

namespace BranchXamarinSDK
{
	public interface IBranchReferralInterface
	{
		void ReferralCodeCreated(String code);
		void ReferralCodeValidated(String code, bool valid);
		void ReferralCodeApplied(String code);
		void ReferralRequestError(BranchError error);
	}
}

