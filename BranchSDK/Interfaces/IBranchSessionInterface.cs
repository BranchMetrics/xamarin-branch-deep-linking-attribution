using System;
using System.Collections.Generic;

namespace BranchSDK
{
	public interface IBranchSessionInterface
	{
		void InitSessionComplete(Dictionary<string, object> data);
		void SessionRequestError(BranchError error);
	}
}

