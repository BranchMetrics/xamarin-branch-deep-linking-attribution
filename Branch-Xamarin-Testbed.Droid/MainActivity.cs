using Android.App;
using Android.Content;
using Android.Content.PM;
using Android.Widget;
using Android.OS;
using BranchXamarinSDK;
using BranchXamarinTestbed;

namespace BranchXamarinTestbed.Droid
{
	[Activity (Label = "Branch-Xamarin-Testbed.Droid", MainLauncher = true, Icon = "@mipmap/icon", LaunchMode = LaunchMode.SingleTask)]

	[IntentFilter (new[]{"android.intent.action.VIEW"},
		Categories=new[]{"android.intent.category.DEFAULT", "android.intent.category.BROWSABLE"},
		DataScheme="branchtesturi",
		DataHost="open")]
	
	public class MainActivity : global::Xamarin.Forms.Platform.Android.FormsApplicationActivity
	{
		protected override void OnCreate (Bundle savedInstanceState)
		{
			base.OnCreate (savedInstanceState);
			global::Xamarin.Forms.Forms.Init (this, savedInstanceState);

			App app = new App ();

			BranchAndroid.Debug = true;
			BranchAndroid.Init (this, "Your Branch key here", app);

			LoadApplication (app);
		}

		protected override void OnNewIntent(Intent intent) {
			this.Intent = intent;
		}
	}
}