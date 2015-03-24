using System;
using System.Collections.Generic;
using System.Threading.Tasks;

using Android.App;
using Android.Views;
using Android.Widget;
using Android.OS;
using Android.Util;

using BranchXamarinSDK;

namespace SmartSessionAndFloodTest
{
	[Activity (Label = "SmartSessionAndFloodTest", MainLauncher = true, Icon = "@drawable/icon")]
	public class MainActivity : Activity,
		View.IOnClickListener,
		IBranchSessionInterface,
		IBranchActionsInterface,
		IBranchReferralInterface,
		IBranchRewardsInterface,
	IBranchUrlInterface
	{
		TextView FloodStatus;
		int Launched;
		int Completed;
		int Errored;
		int Retries;

		protected override void OnCreate (Bundle savedInstanceState)
		{
			base.OnCreate (savedInstanceState);

			BranchAndroid.Init (this, "90830750554783802", Intent.Data);
			Branch.GetInstance ().Timeout = TimeSpan.FromSeconds (100);

			// Set our view from the "main" layout resource
			SetContentView (Resource.Layout.Main);
			var tss = (Button)FindViewById (Resource.Id.test_smart_session);
			tss.SetOnClickListener (this);
			var tf = (Button)FindViewById (Resource.Id.test_flood);
			tf.SetOnClickListener (this);

			FloodStatus = (TextView)FindViewById (Resource.Id.flood_status);

			UpdateFloodStatus ();

			// Enable Smart Session
			Branch.GetInstance ().SmartSessionEnabled = true;
		}

		public void OnClick(View view) {
			if (view.Id == Resource.Id.test_smart_session) {
				TestSmartSessionClicked ();
			} else if (view.Id == Resource.Id.test_flood) {
				TestFloodClicked ();
			}
		}

		override protected void OnStart() {
			Log.Debug ("TEST", "MainActivity OnStart");
			base.OnStart();
			Log.Debug ("TEST", "Doing init");
			Retries = 0;
			Branch.GetInstance ().InitSessionAsync (this);
		}

		override protected void OnStop() {
			Log.Debug ("TEST", "MainActivity OnStop");
			Log.Debug ("TEST", "Doing close");
			Branch.GetInstance ().CloseSessionAsync (this);
			base.OnStop();
		}

		void TestSmartSessionClicked() {
			StartActivity (typeof(SecondActivity));
		}

		async Task TestFloodClicked() {
			Launched = 0;
			Completed = 0;
			Errored = 0;
			UpdateFloodStatus ();

			// Launch 50 calls as quickly as possible
			for (int i = 0; i < 10; i++) {
				Launched++;
				UpdateFloodStatus ();
				await Branch.GetInstance ().GetCreditHistoryAsync (this, "test");
				Launched++;
				UpdateFloodStatus ();
				await Branch.GetInstance ().GetReferralCodeAsync (this, i * 10);
				Launched++;
				UpdateFloodStatus ();
				await Branch.GetInstance ().LoadReferralActionCountsAsync (this);
				Launched++;
				UpdateFloodStatus ();
				await Branch.GetInstance ().LoadReferralActionCountsAsync (this);
				Launched++;
				UpdateFloodStatus ();
				await  Branch.GetInstance ().UserCompletedActionAsync ("TEST" + i, null, this);
			}
		}

		void UpdateFloodStatus() {
			RunOnUiThread (() => {
				String str = "Launched: " + Launched + " Completed: " + Completed + " Errored: " + Errored;
				FloodStatus.Text = str;
			});
		}

		#region IBranchSessionInterface implementation

		public void InitSessionComplete (Dictionary<string, object> data)
		{
			Log.Debug ("TEST", "Session init completed successfully");
			Branch.GetInstance ().GetReferralCodeAsync (this, 1);
		}

		public void CloseSessionComplete ()
		{
			Log.Debug ("TEST", "Session close completed successfully");
		}

		public void SessionRequestError (BranchError error)
		{
			Log.Error ("TEST", "Session error: " + error.ErrorMessage);
			/*
			if (Retries < 3) {
				Retries++;
				Branch.GetInstance ().InitSessionAsync (this);
			}
			*/
		}

		#endregion

		#region IBranchActionsInterface implementation

		public void ActionComplete (string eventStr)
		{
			Completed++;
			UpdateFloodStatus ();
		}

		public void LoadActionComplete ()
		{
			Completed++;
			UpdateFloodStatus ();
		}

		public void ActionRequestError (BranchError error)
		{
			Completed++;
			Errored++;
			UpdateFloodStatus ();
		}

		#endregion

		#region IBranchReferralInterface implementation

		public void ReferralCodeCreated (string code)
		{
			if (Launched == 0) {
				var branch = Branch.GetInstance ();
				var tags = new List<String>();
				var data = new Dictionary<string, object> {
					{ "user", "test@test.com" }, // This is just an email address
					{ "referral_code", code },
					{ "inviteSource", "inviteSourceEmail" }
				};

				branch.GetShortUrlAsync (this, data, null, "inviteLink", null, tags, Constants.URL_FEATURE_INVITE);
			} else {
				Completed++;
				UpdateFloodStatus ();
			}
		}

		public void ReferralCodeValidated (string code, bool valid)
		{
			Completed++;
			UpdateFloodStatus ();
		}

		public void ReferralCodeApplied (string code)
		{
			Completed++;
			UpdateFloodStatus ();
		}

		public void ReferralRequestError (BranchError error)
		{
			Completed++;
			Errored++;
			UpdateFloodStatus ();
		}

		#endregion

		#region IBranchRewardsInterface implementation

		public void RewardsLoaded ()
		{
			Completed++;
			UpdateFloodStatus ();
		}

		public void RewardsRedeemed (string bucket, int count)
		{
			Completed++;
			UpdateFloodStatus ();
		}

		public void CreditHistory (List<CreditHistoryEntry> history)
		{
			Completed++;
			UpdateFloodStatus ();
		}

		public void RewardsRequestError (BranchError error)
		{
			Completed++;
			Errored++;
			UpdateFloodStatus ();
		}

		#endregion

		#region IBranchUrlInterface implementation

		public void ReceivedUrl (Uri uri)
		{
			Branch.GetInstance ().Log ("Got URI: " + uri);
		}

		public void UrlRequestError (BranchError error)
		{
			Branch.GetInstance ().Log ("Error: " + error.ErrorMessage, "TEST", 6);
		}

		#endregion
	}
}


