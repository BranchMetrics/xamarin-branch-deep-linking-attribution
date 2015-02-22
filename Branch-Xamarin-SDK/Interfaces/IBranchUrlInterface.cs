using System;

namespace BranchXamarinSDK
{
	public interface IBranchUrlInterface
	{
		void ReceivedUrl(Uri uri);
		void UrlRequestError(BranchError error);
	}
}

