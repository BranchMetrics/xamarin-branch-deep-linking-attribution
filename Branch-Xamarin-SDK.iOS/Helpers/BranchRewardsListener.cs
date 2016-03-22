using System;
using BranchXamarinSDK;
using BranchXamarinSDK.iOS;
using Foundation;

namespace BranchXamarinSDK.iOS
{
	public class BranchRewardsListener
	{
		private IBranchRewardsInterface callback = null;

		public BranchRewardsListener (IBranchRewardsInterface callback)
		{
			this.callback = callback;
		}

		public void LoadRewardsCallback(bool changed, NSError error) {

			if (callback == null) {
				return;
			}

			if (error == null) {

				callback.RewardsLoaded ();
			} else {

				BranchError err = new BranchError (error.Description, (int)error.Code);
				callback.RewardsRequestError (err);
			}
		}

		public void RedeemRewardsCallback(bool changed, NSError error) {

			if (callback == null) {
				return;
			}

			if (error == null) {

				callback.RewardsRedeemed ();
			} else {

				BranchError err = new BranchError (error.Description, (int)error.Code);
				callback.RewardsRequestError (err);
			}
		}

		public void GetCreditHistoryCallback(NSObject[] list, NSError error) {
			if (callback == null) {
				return;
			}

			if (error == null) {

				callback.CreditHistory (BranchIOSUtils.ToCreditHistoryArray(list));
			} else {

				BranchError err = new BranchError (error.Description, (int)error.Code);
				callback.RewardsRequestError (err);
			}
		}
	}
}

