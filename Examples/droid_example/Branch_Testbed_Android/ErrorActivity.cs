
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;

namespace Branch_Testbed_Android
{
	[Activity(Label = "ErrorActivity")]
	public class ErrorActivity : Activity
	{
		protected override void OnCreate(Bundle savedInstanceState)
		{
			base.OnCreate(savedInstanceState);

			// Create your application here
			SetContentView(Resource.Layout.ErrorLayout);

			TextView errorTitleText = FindViewById<TextView>(Resource.Id.errorTitle);
			TextView errorDescText = FindViewById<TextView>(Resource.Id.errorDesc);

			errorTitleText.Text = "Error code: " + Intent.Extras.GetInt("ErrorCode").ToString();
			errorDescText.Text = Intent.Extras.GetString("ErrorMessage");
		}
	}
}
