using System;
using BranchXamarinSDK;
using BranchXamarinSDK.iOS;
using Foundation;

namespace BranchXamarinSDK.iOS
{
	public class BranchBUOSessionListener
	{
		private IBranchBUOSessionInterface callback = null;

		public BranchBUOSessionListener (IBranchBUOSessionInterface callback)
		{
			this.callback = callback;
		}

		public void InitCallback (IOSNativeBranch.BranchUniversalObject buo,
			IOSNativeBranch.BranchLinkProperties blp,
			NSError error) {

			if (callback == null) {
				return;
			}

			if (error == null) {

				callback.InitSessionComplete (new BranchUniversalObject (BranchIOSUtils.ToDictionary(buo)),
					new BranchLinkProperties (BranchIOSUtils.ToDictionary(blp)));
			} else {

				BranchError err = new BranchError (error.Description, (int)error.Code);
				callback.SessionRequestError (err);
			}
		}
	}
}

