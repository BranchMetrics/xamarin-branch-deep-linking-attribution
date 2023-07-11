using System;
using System.Collections.Generic;

namespace BranchSDK
{
	public interface IBranchIdentityInterface
	{
		void IdentitySet(Dictionary<string, object> data);
		void LogoutComplete();
		void IdentityRequestError(BranchError error);
	}
}

