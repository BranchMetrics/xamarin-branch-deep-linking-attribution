using System;
using System.Collections.Generic;
using Org.Json;
using Newtonsoft.Json;
using BranchXamarinSDK;
using BranchXamarinSDK.Droid;

namespace BranchXamarinSDK.Droid
{
	public class BranchRewardsListener : Java.Lang.Object,
		IO.Branch.Referral.AndroidNativeBranch.IBranchReferralStateChangedListener,
		IO.Branch.Referral.AndroidNativeBranch.IBranchListResponseListener
	{
		public delegate void OnResponseRewards(bool status, IO.Branch.Referral.BranchError error);
		public OnResponseRewards onResponseRewards = null;
		private IBranchRewardsInterface callback = null;

		public BranchRewardsListener (IBranchRewardsInterface callback)
		{
			this.callback = callback;
		}

		public void OnStateChanged (bool changed, IO.Branch.Referral.BranchError error) {
			if (onResponseRewards != null) {
				onResponseRewards (changed, error);
			}
		}

		public void OnReceivingResponse (JSONArray data, IO.Branch.Referral.BranchError error) {
			if (callback == null) {
				return;
			}

			if (error == null) {
				callback.CreditHistory (BranchAndroidUtils.ToCreditHistoryArray(data));
			} else {

				BranchError err = new BranchError (error.Message, (int)error.ErrorCode);
				callback.RewardsRequestError (err);
			}
		}

		public void LoadRewardsCallback(bool changed, IO.Branch.Referral.BranchError error) {

			if (callback == null) {
				return;
			}

			if (error == null) {
				callback.RewardsLoaded ();
			} else {

				BranchError err = new BranchError (error.Message, (int)error.ErrorCode);
				callback.RewardsRequestError (err);
			}
		}

		public void RedeemRewardsCallback(bool changed, IO.Branch.Referral.BranchError error) {

			if (callback == null) {
				return;
			}

			if (error == null) {
				callback.RewardsRedeemed ();
			} else {

				BranchError err = new BranchError (error.Message, (int)error.ErrorCode);
				callback.RewardsRequestError (err);
			}
		}
	}
}

