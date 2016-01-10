using Foundation;
using UIKit;

using BranchXamarinSDK;

namespace BranchXamarinSDKTestbed.iOS
{
	[Register ("AppDelegate")]
	public class AppDelegate : global::Xamarin.Forms.Platform.iOS.FormsApplicationDelegate
	{
		private App app = null;

		public override bool FinishedLaunching (UIApplication uiApplication, NSDictionary launchOptions)
		{
			global::Xamarin.Forms.Forms.Init ();

			NSUrl url = null;
			if ((launchOptions != null) && launchOptions.ContainsKey(UIApplication.LaunchOptionsUrlKey)) {
				url = (NSUrl)launchOptions.ValueForKey (UIApplication.LaunchOptionsUrlKey);
			}

			BranchIOS.Init ("YOUR APP KEY HERE", url);
			app = new App ();
			LoadApplication (app);

			return base.FinishedLaunching (uiApplication, launchOptions);
		}

		public override bool OpenUrl(UIApplication application,
			NSUrl url,
			string sourceApplication,
			NSObject annotation)
		{
			BranchIOS.getInstance().SetNewUrl (url);
			return true;
		}

		public override bool ContinueUserActivity (UIApplication application, NSUserActivity userActivity, UIApplicationRestorationHandler completionHandler)
		{
			bool handledByBranch = BranchIOS.getInstance ().ContinueUserActivity (userActivity, app);
			return handledByBranch;
		}
	}
}