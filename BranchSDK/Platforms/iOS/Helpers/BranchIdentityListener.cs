using System;
using BranchSDK;
using BranchSDK.iOS;
using Foundation;

namespace BranchSDK.iOS
{
	public class BranchIdentityListener
	{
		private IBranchIdentityInterface callback = null;

		public BranchIdentityListener (IBranchIdentityInterface callback)
		{
			this.callback = callback;
		}

		public void SetIdentityCallback (NSDictionary data, NSError error) {

			if (callback == null) {
				return;
			}

			if (error == null) {

				callback.IdentitySet (BranchIOSUtils.ToDictionary(data));
			} else {

				BranchError err = new BranchError (error.Description, (int)error.Code);
				callback.IdentityRequestError (err);
			}
		}

		public void LogoutCallback (bool status, NSError error) {

			if (callback == null) {
				return;
			}

			if (error == null) {

				callback.LogoutComplete ();
			} else {

				BranchError err = new BranchError (error.Description, (int)error.Code);
				callback.IdentityRequestError (err);
			}
		}
	}
}

