using System;
using System.Threading.Tasks;

using Android.App;
using Android.Content;
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
		IBranchRewardsInterface
	{
		TextView FloodStatus;
		int Launched = 0;
		int Completed = 0;
		int Errored = 0;

		protected override void OnCreate (Bundle bundle)
		{
			base.OnCreate (bundle);

			BranchAndroid.Init (this, "90830750554783802", Intent.Data);

			// Set our view from the "main" layout resource
			SetContentView (Resource.Layout.Main);
			Button tss = (Button)FindViewById (Resource.Id.test_smart_session);
			tss.SetOnClickListener (this);
			Button tf = (Button)FindViewById (Resource.Id.test_flood);
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
				Branch.GetInstance ().GetCreditHistoryAsync (this, "test");
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

		public void InitSessionComplete (System.Collections.Generic.Dictionary<string, object> data)
		{
			Log.Debug ("TEST", "Session init completed successfully");
		}

		public void CloseSessionComplete ()
		{
			Log.Debug ("TEST", "Session close completed successfully");
		}

		public void SessionRequestError (BranchError error)
		{
			Log.Error ("TEST", "Session error: " + error.ErrorMessage);
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
			Completed++;
			UpdateFloodStatus ();
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

		public void CreditHistory (System.Collections.Generic.List<CreditHistoryEntry> history)
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
	}
}


