using System;

namespace BranchXamarinSDK.Droid
{
	public class BranchBUOSessionListener : Java.Lang.Object, IO.Branch.Referral.AndroidNativeBranch.IBranchUniversalReferralInitListener
	{
		private IBranchBUOSessionInterface callback = null;

		public BranchBUOSessionListener(IBranchBUOSessionInterface callback) {
			this.callback = callback;
		}

		public void OnInitFinished (IO.Branch.Indexing.BranchUniversalObject buo,
			IO.Branch.Referral.Util.LinkProperties blp,
			IO.Branch.Referral.BranchError error) {

			if (callback == null) {
				return;
			}

			if (error == null) {

				callback.InitSessionComplete (new BranchUniversalObject (BranchAndroidUtils.ToDictionary(buo)),
					new BranchLinkProperties (BranchAndroidUtils.ToDictionary(blp)));
			} else {

				BranchError err = new BranchError (error.Message, error.ErrorCode);
				callback.SessionRequestError (err);
			}
		}
	}
}

