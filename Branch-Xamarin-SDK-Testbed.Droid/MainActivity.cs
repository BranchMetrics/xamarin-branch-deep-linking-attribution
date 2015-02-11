using Android.App;
using Android.OS;
using Android.Content.PM;

using BranchXamarinSDKTestbed;

namespace BranchXamarinSDKTestbed.Droid
{
	[Activity (Label = "Branch-Xamarin-SDK-Testbed.Droid", Icon = "@drawable/icon", MainLauncher = true, ConfigurationChanges = ConfigChanges.ScreenSize | ConfigChanges.Orientation)]
	[IntentFilter (new[]{"android.intent.action.VIEW"},
		Categories=new[]{"android.intent.category.DEFAULT", "android.intent.category.BROWSABLE"},
		DataScheme="branchxamarinandroid",
		DataHost="open")]
	public class MainActivity : global::Xamarin.Forms.Platform.Android.FormsApplicationActivity
	{
		protected override void OnCreate (Bundle bundle)
		{
			base.OnCreate (bundle);

			global::Xamarin.Forms.Forms.Init (this, bundle);

			BranchAndroid.Init (this, "90830750554783802");

			LoadApplication (new App ());
		}
	}
}


