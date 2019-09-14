using Foundation;
using UIKit;
using BranchXamarinSDK;
using iAd;
using BranchXamarinTestbed;

namespace BranchXamarinTestbed.iOS
{
	[Register ("AppDelegate")]
	public class AppDelegate : global::Xamarin.Forms.Platform.iOS.FormsApplicationDelegate
	{
		public override bool FinishedLaunching (UIApplication application, NSDictionary launchOptions)
		{
			global::Xamarin.Forms.Forms.Init ();

            iAd.ADBannerView aDBannerView = new ADBannerView();

            BranchIOS.DelayInitToCheckForSearchAds();
			// set Debug mode
			BranchIOS.Debug = true;

			//App app = new App ();
			//BranchIOS.Init ("your Branch key", launchOptions, app);
			//LoadApplication (app);

			// uncomment to try BranchUniversalObject
			AppBUO appBUO = new AppBUO ();

            //BranchIOS.DelayInitToCheckForSearchAds();
            BranchIOS.Init ("key_live_mglVaBqjIsSpREdbUa6DLahhABarUg0a", launchOptions, appBUO);

            // disable tracking of user data
            //BranchIOS.getInstance().SetTrackingDisabled(true);

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