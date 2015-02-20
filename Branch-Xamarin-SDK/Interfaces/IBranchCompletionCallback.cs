using System;

namespace BranchXamarinSDK
{
	public interface IBranchCompletionCallback
	{
		void RequestComplete(BranchError error);
	}
}

