using System;

namespace BranchSDK.Droid
{
	public class BranchLinkShareListener : Java.Lang.Object, IO.Branch.Referral.AndroidNativeBranch.IBranchLinkShareListener
	{
		private IBranchLinkShareInterface callback = null;

		public BranchLinkShareListener (IBranchLinkShareInterface callback)
		{
			this.callback = callback;
		}

		public void OnChannelSelected (string channel) {
			if (callback == null) {
				return;
			}

			callback.ChannelSelected (channel);
		}

		public void OnLinkShareResponse (string sharedLink, string sharedChannel, IO.Branch.Referral.BranchError error) {
			if (callback == null) {
				return;
			}

			if (error == null) {
				callback.LinkShareResponse (sharedLink, sharedChannel);
			}
			else {
				BranchError err = new BranchError (error.Message, error.ErrorCode);
				callback.LinkShareRequestError (err);
			}
		}

		public void OnShareLinkDialogDismissed () {}

		public void OnShareLinkDialogLaunched () {}
	}
}

