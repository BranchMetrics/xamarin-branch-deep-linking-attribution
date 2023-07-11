using System;

namespace BranchSDK
{
	public interface IBranchBUOSessionInterface
	{
		void InitSessionComplete(BranchUniversalObject buo, BranchLinkProperties blp);
		void SessionRequestError(BranchError error);
	}
}

