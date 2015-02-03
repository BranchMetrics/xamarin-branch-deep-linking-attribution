using Android.App;
using Android.OS;
using Android.Content.PM;

using BranchXamarinSDKTestbed;

namespace BranchXamarinSDKTextbed.Droid
{
	[Activity (Label = "Branch-Xamarin-SDK-Testbed.Droid", Icon = "@drawable/icon", MainLauncher = true, ConfigurationChanges = ConfigChanges.ScreenSize | ConfigChanges.Orientation)]
	public class MainActivity : global::Xamarin.Forms.Platform.Android.FormsApplicationActivity
	{
		protected override void OnCreate (Bundle bundle)
		{
			base.OnCreate (bundle);

			global::Xamarin.Forms.Forms.Init (this, bundle);

			LoadApplication (new App ());
		}
	}
}


