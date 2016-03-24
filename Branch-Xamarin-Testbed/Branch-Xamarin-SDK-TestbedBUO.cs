using BranchXamarinSDK;

using System.Collections.Generic;
using System.ComponentModel;

using Xamarin.Forms;

namespace BranchXamarinTestbed
{
	public class AppBUO : Application, IBranchBUOSessionInterface
	{
		private TestPageBUO testPage;

		public AppBUO ()
		{
			var navPage = new NavigationPage ();
			testPage = new TestPageBUO ();
			navPage.PushAsync (testPage);

			MainPage = navPage;
		}
			
		#region IBranchBUOSessionInterface implementation

		public void InitSessionComplete(BranchUniversalObject buo, BranchLinkProperties blp) {
			testPage.InitSessionComplete (buo, blp);
		}
						
		public void SessionRequestError (BranchError error)
		{
			testPage.SessionRequestError (error);
		}

		#endregion
	}
}

