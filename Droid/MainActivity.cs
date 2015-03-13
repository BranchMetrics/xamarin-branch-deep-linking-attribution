using Android.App;
using Android.OS;
using Android.Content.PM;

using BranchXamarinSDK;
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
		protected override void OnCreate (Bundle savedInstanceState)
		{
			base.OnCreate (savedInstanceState);

			global::Xamarin.Forms.Forms.Init (this, savedInstanceState);

			BranchAndroid.Init (this, "YOUR APP KEY HERE", Intent.Data);

			LoadApplication (new App ());
		}
	}
}


