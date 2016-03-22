using System;
using System.Collections;
using System.Collections.Generic;
using Android.Content;
using Android.App;
using Org.Json;
using Newtonsoft.Json;
using IO.Branch.Referral;
using BranchXamarinSDK.Droid;

namespace BranchXamarinSDK
{
	public class BranchAndroid : Branch
	{
		#region Singleton

		private static BranchAndroid instance = null;

		private BranchAndroid () { }

		public static BranchAndroid getInstance() {
			if (instance == null) {
				throw new BranchException ("You must initialize Branch before you can use the Branch object!");
			}

			return instance;
		}

		private AndroidNativeBranch NativeBranch {
			get { return AndroidNativeBranch.GetInstance (appContext, branchKey); }
		}

		#endregion


		#region Helpers declaration

		private BranchAndroidLifeCycleHandler lifeCycleHandler = null;

		#endregion


		#region Initialization

		private Context appContext = null;

		public static void Init(Context context, String branchKey, IBranchSessionInterface callback) {

			if (instance != null) {
				instance.lifeCycleHandler.callback = callback;
				return;
			}

			if (!branchKey.StartsWith("key_")) {
				Console.WriteLine ("Usage of App Key is deprecated, please move toward using a Branch key");
			}

			instance = new BranchAndroid ();
			Branch.branchInstance = instance;
			instance.appContext = context.ApplicationContext;
			instance.branchKey = branchKey;

			if (Debug) {
				instance.SetDebug ();
			}

			instance.lifeCycleHandler = new BranchAndroidLifeCycleHandler (callback);
			((Activity)context).Application.RegisterActivityLifecycleCallbacks (instance.lifeCycleHandler);
		}

		protected override void SetDebug() {
			NativeBranch.SetDebug ();
		}

		#endregion


		#region Session methods

		public override void InitSession(IBranchSessionInterface callback) {
			base.InitSession (callback);
			BranchSessionListener obj = new BranchSessionListener (callback);
			obj.onResponseInit = obj.InitCallback;
			callbacksList.Add (obj as Object);

			NativeBranch.InitSession (obj);
		}

		public override void CloseSession() {
			NativeBranch.CloseSession ();
		}

		public override Dictionary<String, object> GetLastReferringParams () {
			return BranchAndroidUtils.ToDictionary(NativeBranch.LatestReferringParams);
		}

		public override Dictionary<String, object> GetFirstReferringParams () {
			return BranchAndroidUtils.ToDictionary(NativeBranch.FirstReferringParams);
		}

		#endregion


		#region Identity methods

		public override void SetIdentity(String user, IBranchIdentityInterface callback) {
			BranchIdentityListener obj = new BranchIdentityListener (callback);
			obj.onResponseIndentitySet = obj.SetIdentityCallback;
			callbacksList.Add (obj as Object);

			NativeBranch.SetIdentity (user, obj);
		}

		public override void Logout (IBranchIdentityInterface callback = null) {
			BranchIdentityListener obj = new BranchIdentityListener (callback);
			obj.onResponseLogout = obj.LogoutCallback;
			callbacksList.Add (obj as Object);

			NativeBranch.Logout (obj);
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
			obj.onResponseUrl = obj.GetShortUrlCallback;
			callbacksList.Add (obj as Object);

			NativeBranch.GetShortUrl (tags, channel, feature, stage, BranchAndroidUtils.ToJSONObject(parameters), duration, obj);
		}

		public override void GetShortUrl (IBranchUrlInterface callback,
			int type = Constants.URL_TYPE_UNLIMITED,
			Dictionary<String, dynamic> parameters = null,
			string channel = "",
			string stage = "",
			ICollection<String> tags = null,
			string feature = "") {

			BranchUrlListener obj = new BranchUrlListener (callback);
			obj.onResponseUrl = obj.GetShortUrlCallback;
			callbacksList.Add (obj as Object);

			NativeBranch.GetShortUrl(type, tags, channel, feature, stage, BranchAndroidUtils.ToJSONObject(parameters), obj);
		}

		#endregion


		#region Action methods

		public override void UserCompletedAction (String action, Dictionary<string, object> metadata = null) {
			NativeBranch.UserCompletedAction (action, BranchAndroidUtils.ToJSONObject(metadata));
		}

		#endregion


		#region Credits methods

		public override void LoadRewards (IBranchRewardsInterface callback) {
			BranchRewardsListener obj = new BranchRewardsListener (callback);
			obj.onResponseRewards = obj.LoadRewardsCallback;
			callbacksList.Add (obj as Object);

			NativeBranch.LoadRewards (obj);
		}

		public override void RedeemRewards (IBranchRewardsInterface callback, int amount, string bucket = "default") {
			BranchRewardsListener obj = new BranchRewardsListener (callback);
			obj.onResponseRewards = obj.RedeemRewardsCallback;
			callbacksList.Add (obj as Object);

			NativeBranch.RedeemRewards (bucket, amount, obj);
		}

		public override void GetCreditHistory (IBranchRewardsInterface callback,
			string bucket = "",
			string afterId = "",
			int length = 100,
			bool mostRecentFirst = true) {

			BranchRewardsListener obj = new BranchRewardsListener (callback);
			obj.onResponseHistory = obj.GetCreditHistoryCallback;
			callbacksList.Add (obj as Object);

			if (mostRecentFirst) {
				NativeBranch.GetCreditHistory (bucket, afterId, length, AndroidNativeBranch.CreditHistoryOrder.KMostRecentFirst, obj);
			}
			else {
				NativeBranch.GetCreditHistory (bucket, afterId, length, AndroidNativeBranch.CreditHistoryOrder.KLeastRecentFirst, obj);
			}
		}

		public override int GetCredits () {
			return NativeBranch.Credits;
		}

		public override int GetCreditsForBucket (string bucket) {
			return NativeBranch.GetCreditsForBucket (bucket);
		}

		#endregion


		#region Configuration methods

		public override void SetRetryInterval (int retryInterval) {
			NativeBranch.SetRetryInterval (retryInterval);
		}

		public override void SetMaxRetries (int maxRetries) {
			NativeBranch.SetRetryCount (maxRetries);
		}

		public override void SetNetworkTimeout (int timeout) {
			NativeBranch.SetNetworkTimeout (timeout);
		}

		public override void AccountForFacebookSDKPreventingAppLaunch () {
			// We don't have this method in Android version
		}

		#endregion
	}
}

