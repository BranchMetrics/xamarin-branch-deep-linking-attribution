using System;
using System.Collections.Generic;

namespace BranchXamarinSDK
{
	public interface IBranchSessionInterface
	{
		void InitSessionComplete(Dictionary<string, object> data);
		void CloseSessionComplete();
		void SessionRequestError(BranchError error);
	}
}

