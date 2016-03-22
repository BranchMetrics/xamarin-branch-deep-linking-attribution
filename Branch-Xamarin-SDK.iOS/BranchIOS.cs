using System;
using System.Collections;
using System.Collections.Generic;
using Foundation;
using BranchXamarinSDK.iOS;

namespace BranchXamarinSDK
{
	public class BranchIOS : Branch
	{
		#region Singleton

		private static BranchIOS instance = null;

		private BranchIOS () { }

		public static BranchIOS getInstance() {
			if (instance == null) {
				throw new BranchException ("You must initialize Branch before you can use the Branch object!");
			}

			return instance;
		}
			
		private IOSNativeBranch.Branch NativeBranch {
			get { return IOSNativeBranch.Branch.GetInstance(branchKey); }
		}

		#endregion


		#region Initialization

		private NSDictionary launchOptions = null;

		public static void Init(String branchKey, NSDictionary launchOptions, IBranchSessionInterface callback) {
			if (!branchKey.StartsWith("key_")) {
				Console.WriteLine ("Usage of App Key is deprecated, please move toward using a Branch key");
			}

			instance = new BranchIOS ();
			Branch.branchInstance = instance;
			instance.branchKey = branchKey;

			if (launchOptions != null) {
				instance.launchOptions = new NSDictionary (launchOptions);
			} else {
				instance.launchOptions = new NSDictionary ();
			}

			if (Debug) {
				instance.SetDebug ();
			}
				
			instance.InitSession (callback);
		}

		protected override void SetDebug() {
			NativeBranch.SetDebug ();
		}

		#endregion


		#region Session methods

		public override void InitSession(IBranchSessionInterface callback) {
			base.InitSession (callback);
			BranchSessionListener obj = new BranchSessionListener (callback);
			callbacksList.Add (obj as Object);

			NativeBranch.InitSessionWithLaunchOptions(launchOptions, obj.InitCallback);
		}

		public override void CloseSession() {
			// we need not CloseSession iOS
		}

		public override Dictionary<String, object> GetLastReferringParams () {
			return BranchIOSUtils.ToDictionary(NativeBranch.LatestReferringParams());
		}

		public override Dictionary<String, object> GetFirstReferringParams () {
			return BranchIOSUtils.ToDictionary(NativeBranch.FirstReferringParams());
		}

		#endregion


		#region Identity methods

		public override void SetIdentity(String user, IBranchIdentityInterface callback) {
			BranchIdentityListener obj = new BranchIdentityListener (callback);
			callbacksList.Add (obj as Object);

			NativeBranch.SetIdentity (user, obj.SetIdentityCallback);
		}

		public override void Logout(IBranchIdentityInterface callback = null) {
			BranchIdentityListener obj = new BranchIdentityListener (callback);
			callbacksList.Add (obj as Object);

			NativeBranch.LogoutWithCallback (obj.LogoutCallback);
		}

		#endregion


		#region Short Links methods

		public override void GetShortUrl (IBranchUrlInterface callback,
			Dictionary<String, dynamic> parameters = null,
			string channel = "",
			string stage = "",
			ICollection<String> tags = null,
			string feature = "",
			int duration = 0) {

			BranchUrlListener obj = new BranchUrlListener (callback);
			callbacksList.Add (obj as Object);

			NativeBranch.GetShortUrlWithParams(BranchIOSUtils.ToNSDictionary(parameters),
				BranchIOSUtils.ToNSObjectArray(tags), "", (nuint)duration, channel, feature, stage, obj.GetShortUrlCallback);
		}

		public override void GetShortUrl (IBranchUrlInterface callback,
			int type = Constants.URL_TYPE_UNLIMITED,
			Dictionary<String, dynamic> parameters = null,
			string channel = "",
			string stage = "",
			ICollection<String> tags = null,
			string feature = "") {

			BranchUrlListener obj = new BranchUrlListener (callback);
			callbacksList.Add (obj as Object);

			NativeBranch.GetShortURLWithParams (BranchIOSUtils.ToNSDictionary(parameters),
				BranchIOSUtils.ToNSObjectArray(tags), channel, feature, stage,
				(IOSNativeBranch.BranchLinkType)type, obj.GetShortUrlCallback);
		}

		#endregion


		#region Action methods

		public override void UserCompletedAction (String action, Dictionary<string, object> metadata = null) {
			NativeBranch.UserCompletedAction (action, BranchIOSUtils.ToNSDictionary (metadata));
		}

		#endregion


		#region Credits methods

		public override void LoadRewards (IBranchRewardsInterface callback) {
			BranchRewardsListener obj = new BranchRewardsListener (callback);
			callbacksList.Add (obj as Object);

			NativeBranch.LoadRewardsWithCallback (obj.LoadRewardsCallback);
		}

		public override void RedeemRewards (IBranchRewardsInterface callback, int amount, string bucket = "default") {
			BranchRewardsListener obj = new BranchRewardsListener (callback);
			callbacksList.Add (obj as Object);

			NativeBranch.RedeemRewards (amount, bucket, obj.RedeemRewardsCallback);
		}

		public override void GetCreditHistory (IBranchRewardsInterface callback,
			string bucket = "",
			string afterId = "",
			int length = 100,
			bool mostRecentFirst = true) {

			BranchRewardsListener obj = new BranchRewardsListener (callback);
			callbacksList.Add (obj as Object);

			if (mostRecentFirst) {
				NativeBranch.GetCreditHistoryForBucket(bucket, afterId, (nint)length,
					IOSNativeBranch.BranchCreditHistoryOrder.MostRecentFirst, obj.GetCreditHistoryCallback);
			}
			else {
				NativeBranch.GetCreditHistoryForBucket(bucket, afterId, (nint)length,
					IOSNativeBranch.BranchCreditHistoryOrder.LeastRecentFirst, obj.GetCreditHistoryCallback);
			}
		}

		public override int GetCredits () {
			return (int)NativeBranch.GetCredits();
		}

		public override int GetCreditsForBucket (string bucket) {
			return (int)NativeBranch.GetCreditsForBucket(bucket);
		}

		#endregion


		#region Configuration methods

		public override void SetRetryInterval (int retryInterval) {
			NativeBranch.SetRetryInterval (retryInterval);
		}

		public override void SetMaxRetries (int maxRetries) {
			NativeBranch.SetMaxRetries ((nint)maxRetries);
		}

		public override void SetNetworkTimeout (int timeout) {
			NativeBranch.SetNetworkTimeout (timeout);
		}

		public override void AccountForFacebookSDKPreventingAppLaunch () {
			NativeBranch.AccountForFacebookSDKPreventingAppLaunch ();
		}

		#endregion


		#region Handle deeplinking

		public bool ContinueUserActivity(NSUserActivity activity) {
			return NativeBranch.ContinueUserActivity(activity);
		}

		public bool OpenUrl (NSUrl url) {
			return NativeBranch.HandleDeepLink(url);
		}

		public void HandlePushNotification (NSDictionary userInfo) {
			NativeBranch.HandlePushNotification(userInfo);
		}

		#endregion
	}
}
