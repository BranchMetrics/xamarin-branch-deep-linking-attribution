using BranchXamarinSDK;
using System.Collections.Generic;
using System.ComponentModel;
using Xamarin.Forms;
using System;

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

            bool res = false;

            if (buo.metadata.GetCustomMetadata().ContainsKey("+clicked_branch_link")) {
                res = Boolean.Parse(buo.metadata.GetCustomMetadata()["+clicked_branch_link"]);
            }

            var dict = Branch.GetInstance().GetLastReferringParams();

			testPage.InitSessionComplete (buo, blp);
		}
		
		public void SessionRequestError (BranchError error)
		{
			testPage.SessionRequestError (error);
		}

		#endregion
	}
}