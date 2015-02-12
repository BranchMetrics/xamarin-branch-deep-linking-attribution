using Foundation;
using UIKit;

namespace BranchXamarinSDKTestbed.iOS
{
	[Register ("AppDelegate")]
	public partial class AppDelegate : global::Xamarin.Forms.Platform.iOS.FormsApplicationDelegate
	{
		public override bool FinishedLaunching (UIApplication app, NSDictionary options)
		{
			global::Xamarin.Forms.Forms.Init ();

			BranchIOS.Init ("90830750554783802");

			LoadApplication (new App ());

			return base.FinishedLaunching (app, options);
		}
	}
}