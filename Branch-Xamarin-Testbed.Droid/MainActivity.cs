using Android.App;
using Android.Content;
using Android.Content.PM;
using Android.Widget;
using Android.OS;
using BranchXamarinSDK;
using BranchXamarinTestbed;

namespace BranchXamarinTestbed.Droid
{
	[Activity (Label = "io.branch.testbed-xamarinforms", MainLauncher = true, Icon = "@mipmap/icon", LaunchMode = LaunchMode.SingleTask)]

	[IntentFilter (new[]{"android.intent.action.VIEW"},
		Categories=new[]{"android.intent.category.DEFAULT", "android.intent.category.BROWSABLE"},
		DataScheme="testbed-xamarinforms",
		DataHost="open")]

	//[IntentFilter (new[]{"android.intent.action.VIEW"},
	//	Categories=new[]{"android.intent.category.DEFAULT", "android.intent.category.BROWSABLE"},
	//	DataScheme="https",
	//	DataHost="bnc.lt",
	//	DataPathPrefix="/LOmd")]

	[IntentFilter(new[] { "android.intent.action.VIEW" },
		Categories = new[] { "android.intent.category.DEFAULT", "android.intent.category.BROWSABLE" },
		DataScheme = "https",
		DataHost = "testbed-xamarinforms.app.link")]

	public class MainActivity : global::Xamarin.Forms.Platform.Android.FormsApplicationActivity
	{
		protected override void OnCreate (Bundle savedInstanceState)
		{
			base.OnCreate (savedInstanceState);
			global::Xamarin.Forms.Forms.Init (this, savedInstanceState);

			//App app = new App ();
			//BranchAndroid.Init (this, GetString(Resource.String.branch_key), app);
			//LoadApplication (app);

			// uncomment to try BranchUniversalObject
			AppBUO appBUO = new AppBUO ();
			BranchAndroid.Init (this, GetString(Resource.String.branch_key), appBUO);
			LoadApplication (appBUO);
		}

		protected override void OnNewIntent(Intent intent) {
			this.Intent = intent;
		}
	}
}
