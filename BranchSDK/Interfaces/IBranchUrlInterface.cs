using System;

namespace BranchSDK
{
	public interface IBranchUrlInterface
	{
		void ReceivedUrl(string uri);
		void UrlRequestError(BranchError error);
	}
}

