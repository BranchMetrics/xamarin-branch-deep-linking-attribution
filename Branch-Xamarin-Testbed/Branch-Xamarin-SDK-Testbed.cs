using BranchXamarinSDK;

using System.Collections.Generic;
using System.ComponentModel;

using Xamarin.Forms;

namespace BranchXamarinTestbed
{
	public class App : Application, IBranchSessionInterface
	{
		private TestPage testPage;

		public App ()
		{
			var navPage = new NavigationPage ();
			testPage = new TestPage ();
			navPage.PushAsync (testPage);

			MainPage = navPage;
		}
			
		#region IBranchSessionInterface implementation

		public void InitSessionComplete (Dictionary<string, object> data)
		{
			testPage.InitSessionComplete (data);
		}

		public void CloseSessionComplete ()
		{
			testPage.CloseSessionComplete ();
		}

		public void SessionRequestError (BranchError error)
		{
			testPage.SessionRequestError (error);
		}

		#endregion
	}
}

