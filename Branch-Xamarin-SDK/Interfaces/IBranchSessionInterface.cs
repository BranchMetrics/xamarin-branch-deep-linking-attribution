using System;
using System.Collections.Generic;

namespace BranchXamarinSDK
{
	public interface IBranchSessionInterface
	{
		void InitSessionComplete(Dictionary<string, object> data);
		void SessionRequestError(BranchError error);
	}
}

