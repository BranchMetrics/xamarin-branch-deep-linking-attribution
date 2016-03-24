using System;
using System.Collections.Generic;
using Org.Json;
using Newtonsoft.Json;
using BranchXamarinSDK;
using BranchXamarinSDK.Droid;

namespace BranchXamarinSDK.Droid
{
	public class BranchIdentityListener: Java.Lang.Object,
		IO.Branch.Referral.AndroidNativeBranch.IBranchReferralInitListener,
		IO.Branch.Referral.AndroidNativeBranch.ILogoutStatusListener
	{
		private IBranchIdentityInterface callback = null;

		public BranchIdentityListener (IBranchIdentityInterface callback)
		{
			this.callback = callback;
		}

		public void OnInitFinished (JSONObject data, IO.Branch.Referral.BranchError error) {
			if (callback == null) {
				return;
			}

			if (error == null) {
				callback.IdentitySet (BranchAndroidUtils.ToDictionary(data));
			} else {

				BranchError err = new BranchError (error.Message, error.ErrorCode);
				callback.IdentityRequestError (err);
			}
		}

		public void OnLogoutFinished (bool changed, IO.Branch.Referral.BranchError error) {
			if (callback == null) {
				return;
			}

			if (error == null) {
				callback.LogoutComplete ();
			} else {

				BranchError err = new BranchError (error.Message, error.ErrorCode);
				callback.IdentityRequestError (err);
			}
		}
	}
}

