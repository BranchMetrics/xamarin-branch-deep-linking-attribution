using System;

namespace BranchXamarinSDK
{
	public interface IBranchGetUrlInterface
	{
		void Finished(Uri uri, BranchError error);
	}
}

