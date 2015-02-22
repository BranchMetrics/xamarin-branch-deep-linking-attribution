using System;
using System.Collections.Generic;

namespace BranchXamarinSDK
{
	public interface IBranchIdentityInterface
	{
		void IdentitySet(String identity, Dictionary<string, object> data);
		void LogoutComplete();
		void IdentityRequestError(BranchError error);
	}
}

