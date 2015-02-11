using BranchXamarinSDK;

using System;

using Xamarin.Forms;

namespace BranchXamarinSDKTestbed
{
	public class App : Application, IBranchReferralInitInterface
	{
		public App ()
		{
			NavigationPage navPage = new NavigationPage ();
			navPage.PushAsync (new TestPage ());

			MainPage = navPage;
		}

		protected override void OnStart ()
		{
			Branch branch = Branch.GetInstance ();
			branch.InitSessionAsync (this);
		}

		protected override void OnSleep ()
		{
			Branch branch = Branch.GetInstance ();
			branch.CloseSessionAsync();
		}

		protected override void OnResume ()
		{
			Branch branch = Branch.GetInstance ();
			branch.InitSessionAsync (this);
		}

		#region IBranchReferralInitInterface implementation

		public void OnInitFinished (System.Collections.Generic.Dictionary<string, dynamic> result, BranchError error)
		{
			System.Diagnostics.Debug.WriteLine ("Initial Result: " + result);
		}

		#endregion
	}
}

