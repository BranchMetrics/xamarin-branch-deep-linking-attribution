using Foundation;
using UIKit;

namespace BranchXamarinSDKTestbed.iOS
{
	[Register ("AppDelegate")]
	public class AppDelegate : global::Xamarin.Forms.Platform.iOS.FormsApplicationDelegate
	{
		public override bool FinishedLaunching (UIApplication uiApplication, NSDictionary launchOptions)
		{
			global::Xamarin.Forms.Forms.Init ();

			NSUrl url = null;
			if ((launchOptions != null) && launchOptions.ContainsKey(UIApplication.LaunchOptionsUrlKey)) {
				url = (NSUrl)launchOptions.ValueForKey (UIApplication.LaunchOptionsUrlKey);
			}

			BranchIOS.Init ("90830750554783802", url);

			LoadApplication (new App ());

			return base.FinishedLaunching (uiApplication, launchOptions);
		}
	}
}