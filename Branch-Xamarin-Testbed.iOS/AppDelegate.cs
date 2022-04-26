using Foundation;
using UIKit;
using iAd;
using BranchXamarinSDK;
using BranchXamarinTestbed;

namespace Branch_Xamarin_Testbed.iOS
{
    [Register("AppDelegate")]
    public class AppDelegate : global::Xamarin.Forms.Platform.iOS.FormsApplicationDelegate
    {

        [Export("window")]
        public override UIWindow Window { get; set; }

        [Export("application:didFinishLaunchingWithOptions:")]
        public override bool FinishedLaunching(UIApplication uiApplication, NSDictionary launchOptions)
        {
            global::Xamarin.Forms.Forms.Init();
            iAd.ADBannerView aDBannerView = new ADBannerView();

            //BranchIOS.DelayInitToCheckForSearchAds();
            //BranchIOS.UseLongerWaitForAppleSearchAds();
            //BranchIOS.IgnoreAppleSearchAdsTestData();
            BranchIOS.EnableLogging = true;

            //App app = new App ();
            //BranchIOS.Init ("your Branch key", launchOptions, app);
            //LoadApplication (app);

            // uncomment to try BranchUniversalObject
            AppBUO appBUO = new AppBUO();

            //BranchIOS.DelayInitToCheckForSearchAds();
            BranchIOS.Init("key_live_mglVaBqjIsSpREdbUa6DLahhABarUg0a", launchOptions, appBUO);

            // disable tracking of user data
            //BranchIOS.getInstance().SetTrackingDisabled(true);

            LoadApplication(appBUO);

            return base.FinishedLaunching(uiApplication, launchOptions);
        }


        public override bool OpenUrl(UIApplication application, NSUrl url, string sourceApplication, NSObject annotation)
        {
            return BranchIOS.getInstance().OpenUrl(url);
        }


        public override bool ContinueUserActivity(UIApplication application, NSUserActivity userActivity, UIApplicationRestorationHandler completionHandler)
        {
            return BranchIOS.getInstance().ContinueUserActivity(userActivity);
        }


        public override void ReceivedRemoteNotification(UIApplication application, NSDictionary userInfo)
        {
            BranchIOS.getInstance().HandlePushNotification(userInfo);
        }


        // UISceneSession Lifecycle

        [Export("application:configurationForConnectingSceneSession:options:")]
        public override UISceneConfiguration GetConfiguration(UIApplication application, UISceneSession connectingSceneSession, UISceneConnectionOptions options)
        {
            // Called when a new scene session is being created.
            // Use this method to select a configuration to create the new scene with.
            return UISceneConfiguration.Create("Default Configuration", connectingSceneSession.Role);
        }


        [Export("application:didDiscardSceneSessions:")]
        public override void DidDiscardSceneSessions(UIApplication application, NSSet<UISceneSession> sceneSessions)
        {
            // Called when the user discards a scene session.
            // If any sessions were discarded while the application was not running, this will be called shortly after `FinishedLaunching`.
            // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
        }
    }
}

