using Foundation;
using UIKit;
using BranchXamarinSDK;
using BranchXamarinSDK.iOS;
using System.Collections.Generic;
using System;
using System.Linq;

namespace Branch_Testbed_iOS
{
	// The UIApplicationDelegate for the application. This class is responsible for launching the
	// User Interface of the application, as well as listening (and optionally responding) to application events from iOS.
	[Register("AppDelegate")]
	public class AppDelegate : UIApplicationDelegate, IBranchBUOSessionInterface
	{
		UIStoryboard storyboard;

		public override UIWindow Window
		{
			get;
			set;
		}

		public override bool OpenUrl(UIApplication application, NSUrl url, string sourceApplication, NSObject annotation)
		{
			return BranchIOS.getInstance().OpenUrl(url);
		}

		public override bool ContinueUserActivity(UIApplication application, NSUserActivity userActivity,
		                                          UIApplicationRestorationHandler completionHandler)
		{
			return BranchIOS.getInstance().ContinueUserActivity(userActivity);
		}

		public override void ReceivedRemoteNotification(UIApplication application, NSDictionary userInfo)
		{
			BranchIOS.getInstance().HandlePushNotification(userInfo);
		}

		public override bool FinishedLaunching(UIApplication application, NSDictionary launchOptions)
		{
			storyboard = UIStoryboard.FromName("Main", null);

			BranchIOS.Debug = true;
			BranchIOS.Init(Constants.Branch_key, launchOptions, this);

			return true;
		}

		public void InitSessionComplete(BranchUniversalObject buo, BranchLinkProperties blp)
		{
			NSObject[] keys = {
				NSObject.FromObject("+is_first_session")
			};

			NSObject[] values = {NSObject.FromObject(0)};
			if (buo.metadata.ContainsKey("+is_first_session")) {
				values[0] = NSObject.FromObject(buo.metadata["+is_first_session"]);
			}

			NSDictionary nsData = NSDictionary.FromObjectsAndKeys(values, keys);
			NSNotificationCenter.DefaultCenter.PostNotificationName(Constants.Branch_notification, null, nsData);
		}

		public void SessionRequestError(BranchError error)
		{
			Console.WriteLine("Branch error: " + error.ErrorCode);
			Console.WriteLine(error.ErrorMessage);

			ErrorViewController errorController = (ErrorViewController)storyboard.InstantiateViewController("ErrorScreen");

			Window.RootViewController.PresentViewController(errorController, false, delegate {
				errorController.SetError("Branch error: " + error.ErrorCode, error.ErrorMessage);
			});
		}
	}
}

