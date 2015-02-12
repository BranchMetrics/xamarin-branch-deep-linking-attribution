[assembly: Xamarin.Forms.Dependency (typeof(BranchXamarinSDKTestbed.iOS.EmailUrlIOS))]

namespace BranchXamarinSDKTestbed.iOS
{
	using System;

	using Foundation;
	using MessageUI;
	using UIKit;

	public class EmailUrlIOS : BranchXamarinSDKTestbed.IEmailUrl
	{
		public EmailUrlIOS ()
		{
		}

		public void EmailUrl(String url, Xamarin.Forms.Application app) {
			MFMailComposeViewController controller = new MFMailComposeViewController ();
			controller.SetSubject ("Check out this App");
			controller.SetMessageBody (url, false);
		}
	}
}

