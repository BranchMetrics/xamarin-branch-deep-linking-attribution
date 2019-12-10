using System;
using Android.App;
using Android.OS;
using Android.Runtime;
using Android.Support.Design.Widget;
using Android.Support.V7.App;
using Android.Views;
using Android.Content;
using Android.Content.PM;
using BranchXamarinSDK;
using BranchXamarinTestbed;


namespace Branch_Xamarin_Testbed.Droid
{
    [Activity(Label = "@string/app_name", Theme = "@style/AppTheme.NoActionBar", MainLauncher = true, LaunchMode = LaunchMode.SingleTask)]

    [IntentFilter(new[] { "android.intent.action.VIEW" },
        Categories = new[] { "android.intent.category.DEFAULT", "android.intent.category.BROWSABLE" },
        DataScheme = "branchtesturi",
        DataHost = "open")]

    //[IntentFilter (new[]{"android.intent.action.VIEW"},
    //	Categories=new[]{"android.intent.category.DEFAULT", "android.intent.category.BROWSABLE"},
    //	DataScheme="https",
    //	DataHost="bnc.lt",
    //	DataPathPrefix="/LOmd")]

    [IntentFilter(new[] { "android.intent.action.VIEW" },
        Categories = new[] { "android.intent.category.DEFAULT", "android.intent.category.BROWSABLE" },
        DataScheme = "https",
        DataHost = "0wpb.app.link")]


    public class MainActivity : global::Xamarin.Forms.Platform.Android.FormsAppCompatActivity
    {

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            global::Xamarin.Forms.Forms.Init(this, savedInstanceState);
            Xamarin.Essentials.Platform.Init(this, savedInstanceState);

            //App app = new App ();
            //BranchAndroid.Init (this, GetString(Resource.String.branch_key), app);
            //LoadApplication (app);

            // uncomment to try BranchUniversalObject
            AppBUO appBUO = new AppBUO();
            BranchAndroid.Init(this, GetString(Resource.String.branch_key), appBUO);

            // enable tracking of user data
            BranchAndroid.getInstance().SetTrackingDisabled(false);

            LoadApplication(appBUO);
        }


        protected override void OnNewIntent(Intent intent)
        {
            this.Intent = intent;
        }


        public override void OnRequestPermissionsResult(int requestCode, string[] permissions, [GeneratedEnum] Android.Content.PM.Permission[] grantResults)
        {
            Xamarin.Essentials.Platform.OnRequestPermissionsResult(requestCode, permissions, grantResults);

            base.OnRequestPermissionsResult(requestCode, permissions, grantResults);
        }
    }
}

