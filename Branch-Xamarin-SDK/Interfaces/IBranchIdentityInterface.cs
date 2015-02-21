using System;
using System.Collections.Generic;

namespace BranchXamarinSDK
{
	public interface IBranchIdentityInterface
	{
		void IdentitySet(String identity, Dictionary<string, object> data);
		void LogoutComplete(String identity);
		void IdentityRequestError(BranchError error);
	}
}

