using Foundation;
using UIKit;
using BranchXamarinSDK;
using BranchXamarinTestbed;

namespace BranchXamarinTestbed.iOS
{
	[Register ("AppDelegate")]
	public class AppDelegate : global::Xamarin.Forms.Platform.iOS.FormsApplicationDelegate
	{
		public override bool FinishedLaunching (UIApplication application, NSDictionary launchOptions)
		{
			global::Xamarin.Forms.Forms.Init ();

			// set Debug mode
			BranchIOS.Debug = true;

			//App app = new App ();
			//BranchIOS.Init ("your Branch key", launchOptions, app);
			//LoadApplication (app);

			// uncomment to try BranchUniversalObject
			AppBUO appBUO = new AppBUO ();
			BranchIOS.Init ("key_live_ldiGkEEvtTY7EUAc3vmochkmFvpL178f", launchOptions, appBUO);
			LoadApplication (appBUO);

			return base.FinishedLaunching(application, launchOptions);
		}

		public override bool OpenUrl (UIApplication application, NSUrl url, string sourceApplication, NSObject annotation) {
			return BranchIOS.getInstance ().OpenUrl (url);
		}

		public override bool ContinueUserActivity (UIApplication application, NSUserActivity userActivity, UIApplicationRestorationHandler completionHandler) {
			return BranchIOS.getInstance ().ContinueUserActivity (userActivity);
		}

		public override void ReceivedRemoteNotification (UIApplication application, NSDictionary userInfo) {
			BranchIOS.getInstance ().HandlePushNotification (userInfo);
		}
	}
}