﻿using System;
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
		public Activity CurrActivity { get; set; }

		public static void Init(Context context, String branchKey, IBranchSessionInterface callback) {

			Init (((Activity)context).Application, branchKey, callback);
		}

		public static void Init(Context context, String branchKey, IBranchBUOSessionInterface callback) {

			Init (((Activity)context).Application, branchKey, callback);
		}

		public static void Init(Application app, String branchKey, IBranchSessionInterface callback) {

			if (instance != null) {
				return;
			}

			if (!branchKey.StartsWith("key_", StringComparison.Ordinal)) {
				Console.WriteLine ("Usage of App Key is deprecated, please move toward using a Branch key");
			}

			instance = new BranchAndroid ();
			Branch.branchInstance = instance;
			instance.appContext = app.ApplicationContext;
			instance.branchKey = branchKey;

			if (Debug) {
				instance.SetDebug ();
			}

			instance.lifeCycleHandler = new BranchAndroidLifeCycleHandler();
			app.RegisterActivityLifecycleCallbacks(instance.lifeCycleHandler);
			getInstance().InitSession(callback);
		}

		public static void Init(Application app, String branchKey, IBranchBUOSessionInterface callback) {

			if (instance != null) {
				return;
			}

			if (!branchKey.StartsWith("key_", StringComparison.Ordinal)) {
				Console.WriteLine ("Usage of App Key is deprecated, please move toward using a Branch key");
			}

			instance = new BranchAndroid ();
			Branch.branchInstance = instance;
			instance.appContext = app.ApplicationContext;
			instance.branchKey = branchKey;

			if (Debug) {
				instance.SetDebug ();
			}

			instance.lifeCycleHandler = new BranchAndroidLifeCycleHandler();
			app.RegisterActivityLifecycleCallbacks(instance.lifeCycleHandler);
			getInstance().InitSession(callback);
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

			NativeBranch.InitSession (obj);
		}

		public override void InitSession (IBranchBUOSessionInterface callback) {
			base.InitSession (callback);
			BranchBUOSessionListener obj = new BranchBUOSessionListener (callback);
			callbacksList.Add (obj as Object);

			NativeBranch.InitSession (obj);
		}

		public override Dictionary<String, object> GetLastReferringParams () {
			return BranchAndroidUtils.ToDictionary(NativeBranch.LatestReferringParams);
		}

		public override BranchUniversalObject GetLastReferringBranchUniversalObject () {
			return new BranchUniversalObject (BranchAndroidUtils.ToDictionary(NativeBranch.LatestReferringParams));
		}

		public override BranchLinkProperties GetLastReferringBranchLinkProperties () {
			return new BranchLinkProperties (BranchAndroidUtils.ToDictionary(NativeBranch.LatestReferringParams));
		}

		public override Dictionary<String, object> GetFirstReferringParams () {
			return BranchAndroidUtils.ToDictionary(NativeBranch.FirstReferringParams);
		}

		public override BranchUniversalObject GetFirstReferringBranchUniversalObject () {
			return new BranchUniversalObject (BranchAndroidUtils.ToDictionary(NativeBranch.FirstReferringParams));
		}

		public override BranchLinkProperties GetFirstReferringBranchLinkProperties () {
			return new BranchLinkProperties (BranchAndroidUtils.ToDictionary(NativeBranch.FirstReferringParams));
		}

		#endregion


		#region Identity methods

		public override void ResetUserSession() {
			NativeBranch.ResetUserSession();
		}

		public override void SetIdentity(String user, IBranchIdentityInterface callback) {
			BranchIdentityListener obj = new BranchIdentityListener (callback);
			callbacksList.Add (obj as Object);

			NativeBranch.SetIdentity (user, obj);
		}

		public override void Logout (IBranchIdentityInterface callback = null) {
			BranchIdentityListener obj = new BranchIdentityListener (callback);
			callbacksList.Add (obj as Object);

			NativeBranch.Logout (obj);
		}

		#endregion


		#region Short Links methods

		public override void GetShortURL (IBranchUrlInterface callback,
			BranchUniversalObject universalObject,
			BranchLinkProperties linkProperties)
		{

			BranchUrlListener obj = new BranchUrlListener (callback);
			callbacksList.Add (obj as Object);

			IO.Branch.Indexing.BranchUniversalObject resBuo = 
				IO.Branch.Indexing.BranchUniversalObject.CreateInstance (BranchAndroidUtils.ToJSONObject(universalObject.ToDictionary()));

			IO.Branch.Referral.Util.LinkProperties resBlp =
				new IO.Branch.Referral.Util.LinkProperties ();

			foreach (string tag in linkProperties.tags) {
				resBlp.AddTag (tag);
			}

			foreach (string key in linkProperties.controlParams.Keys) {
				resBlp.AddControlParameter (key, linkProperties.controlParams[key]);
			}

			resBlp.SetAlias (linkProperties.alias);
			resBlp.SetChannel (linkProperties.channel);
			resBlp.SetDuration (linkProperties.matchDuration);
			resBlp.SetFeature (linkProperties.feature);
			resBlp.SetStage (linkProperties.stage);

			resBuo.GenerateShortUrl (appContext, resBlp, obj);
		}

		#endregion


		#region Share Link methods

		public override void ShareLink (IBranchLinkShareInterface callback,
			BranchUniversalObject universalObject,
			BranchLinkProperties linkProperties,
			string message)
		{

			BranchLinkShareListener obj = new BranchLinkShareListener (callback);
			callbacksList.Add (obj as Object);

			IO.Branch.Indexing.BranchUniversalObject resBuo = 
				IO.Branch.Indexing.BranchUniversalObject.CreateInstance (BranchAndroidUtils.ToJSONObject(universalObject.ToDictionary()));

			IO.Branch.Referral.Util.LinkProperties resBlp =
				new IO.Branch.Referral.Util.LinkProperties ();

			foreach (string tag in linkProperties.tags) {
				resBlp.AddTag (tag);
			}

			foreach (string key in linkProperties.controlParams.Keys) {
				resBlp.AddControlParameter (key, linkProperties.controlParams[key]);
			}

			resBlp.SetAlias (linkProperties.alias);
			resBlp.SetChannel (linkProperties.channel);
			resBlp.SetDuration (linkProperties.matchDuration);
			resBlp.SetFeature (linkProperties.feature);
			resBlp.SetStage (linkProperties.stage);

			IO.Branch.Referral.Util.ShareSheetStyle style = 
				new IO.Branch.Referral.Util.ShareSheetStyle(appContext, "", message);
			
			style.AddPreferredSharingOption(IO.Branch.Referral.SharingHelper.SHARE_WITH.Facebook);
			style.AddPreferredSharingOption(IO.Branch.Referral.SharingHelper.SHARE_WITH.Twitter);
			style.AddPreferredSharingOption(IO.Branch.Referral.SharingHelper.SHARE_WITH.Message);
			style.AddPreferredSharingOption(IO.Branch.Referral.SharingHelper.SHARE_WITH.Email);
			style.AddPreferredSharingOption(IO.Branch.Referral.SharingHelper.SHARE_WITH.Flickr);
			style.AddPreferredSharingOption(IO.Branch.Referral.SharingHelper.SHARE_WITH.GoogleDoc);
			style.AddPreferredSharingOption(IO.Branch.Referral.SharingHelper.SHARE_WITH.WhatsApp);

			resBuo.ShowShareSheet (CurrActivity, resBlp, style, obj);
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
			bool mostRecentFirst = true)
		{

			BranchRewardsListener obj = new BranchRewardsListener (callback);
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

		public override void RegisterView (BranchUniversalObject universalObject) {
			IO.Branch.Indexing.BranchUniversalObject resBuo = 
				IO.Branch.Indexing.BranchUniversalObject.CreateInstance (BranchAndroidUtils.ToJSONObject(universalObject.ToDictionary()));

			resBuo.RegisterView ();
		}

		public override void ListOnSpotlight(BranchUniversalObject universalObject) {
			IO.Branch.Indexing.BranchUniversalObject resBuo =
				IO.Branch.Indexing.BranchUniversalObject.CreateInstance(BranchAndroidUtils.ToJSONObject(universalObject.ToDictionary()));

			resBuo.ListOnGoogleSearch(appContext);
		}

		#endregion
	}
}

