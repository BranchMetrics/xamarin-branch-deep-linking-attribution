using System;

namespace BranchXamarinSDK
{
	public interface IBranchUrlInterface
	{
		void ReceivedUrl(string uri);
		void UrlRequestError(BranchError error);
	}
}

