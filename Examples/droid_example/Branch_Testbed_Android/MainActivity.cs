using Android.App;
using Android.Widget;
using Android.OS;
using BranchXamarinSDK;
using System;
using System.Collections.Generic;
using Android.Content;
using Newtonsoft.Json;

namespace Branch_Testbed_Android
{
	[Activity(Label = "Branch_Testbed_Android", MainLauncher = true, Icon = "@mipmap/icon", LaunchMode = Android.Content.PM.LaunchMode.SingleTask)]

	[IntentFilter(new[] { "android.intent.action.VIEW" },
		Categories = new[] { "android.intent.category.DEFAULT", "android.intent.category.BROWSABLE" },
		DataScheme = "branchtesturi",
		DataHost = "open")]

	[IntentFilter(new[] { "android.intent.action.VIEW" },
		Categories = new[] { "android.intent.category.DEFAULT", "android.intent.category.BROWSABLE" },
		DataScheme = "https",
		DataHost = "fa36.app.link")]

	public class MainActivity : Activity, IBranchSessionInterface
	{
		public void InitSessionComplete(Dictionary<string, object> data)
		{
			var intent = new Intent(this, typeof(BranchActivity));
			intent.PutExtra("BranchData", JsonConvert.SerializeObject(data));

			StartActivity(intent);
		}

		public void SessionRequestError(BranchError error)
		{
			Console.WriteLine("Branch session initialization error: " + error.ErrorCode);
			Console.WriteLine(error.ErrorMessage);

			var intent = new Intent(this, typeof(ErrorActivity));
			intent.PutExtra("ErrorCode", error.ErrorCode);
			intent.PutExtra("ErrorMessage", error.ErrorMessage);

			StartActivity(intent);
		}

		protected override void OnCreate(Bundle savedInstanceState)
		{
			base.OnCreate(savedInstanceState);

			BranchAndroid.Init(this, Resources.GetString(Resource.String.branch_key), this);
		}

		// Ensure we get the updated link identifier when the app is opened from the
		// background with a new link.
		protected override void OnNewIntent(Intent intent)
		{
			this.Intent = intent;
		}
	}
}

