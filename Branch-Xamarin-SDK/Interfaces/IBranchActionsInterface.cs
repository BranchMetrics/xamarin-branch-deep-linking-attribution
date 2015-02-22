using System;

namespace BranchXamarinSDK
{
	public interface IBranchActionsInterface
	{
		void ActionComplete(string eventStr);
		void LoadActionComplete();
		void ActionRequestError(BranchError error);
	}
}

