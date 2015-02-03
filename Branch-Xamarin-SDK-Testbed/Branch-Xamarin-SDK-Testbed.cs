using System;

using Xamarin.Forms;

namespace BranchXamarinSDKTestbed
{
	public class App : Application
	{
		public App ()
		{
			NavigationPage navPage = new NavigationPage ();
			navPage.PushAsync (new TestPage ());

			MainPage = navPage;
		}

		protected override void OnStart ()
		{
			// Handle when your app starts
		}

		protected override void OnSleep ()
		{
			// Handle when your app sleeps
		}

		protected override void OnResume ()
		{
			// Handle when your app resumes
		}
	}
}

