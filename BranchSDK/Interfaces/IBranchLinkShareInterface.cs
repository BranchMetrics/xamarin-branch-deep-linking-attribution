using System;

namespace BranchSDK
{
	public interface IBranchLinkShareInterface
	{
		void ChannelSelected (string channel);
		void LinkShareResponse (string sharedLink, string sharedChannel);

		void LinkShareRequestError(BranchError error);
	}
}
