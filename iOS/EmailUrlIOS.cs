[assembly: Xamarin.Forms.Dependency (typeof(BranchXamarinSDKTestbed.iOS.EmailUrlIOS))]

namespace BranchXamarinSDKTestbed.iOS
{
	using System;

	using Foundation;
	using MessageUI;
	using UIKit;

	using Xamarin.Forms;

	public class EmailUrlIOS : BranchXamarinSDKTestbed.IEmailUrl
	{
		public EmailUrlIOS ()
		{
		}

		public void EmailUrl(String url) {
			MFMailComposeViewController controller = new MFMailComposeViewController ();
			controller.SetSubject ("Check out this App");
			controller.SetMessageBody (url, false);
			controller.Finished += SendFinished;
			UIApplication.SharedApplication.KeyWindow.RootViewController.PresentViewController (controller, true, null);
		}

		public void SendFinished(object sender, MFComposeResultEventArgs e) {
			e.Controller.DismissViewControllerAsync (true);
		}
	}
}

