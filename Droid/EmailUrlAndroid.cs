[assembly: Xamarin.Forms.Dependency (typeof (BranchXamarinSDKTestbed.Droid.EmailUrlAndroid))]

namespace BranchXamarinSDKTestbed.Droid
{
	using System;

	using Xamarin.Forms;

	using Android.Content;

	public class EmailUrlAndroid : IEmailUrl
	{
		public EmailUrlAndroid ()
		{
		}

		public void EmailUrl(String url) {
			// Shouldn't be here if MainActivity isn't up...
			Intent intent = new Intent (Intent.ActionSend);
			intent.SetType ("message/rfc822");
			intent.PutExtra (Intent.ExtraSubject, "Try this app!");
			intent.PutExtra (Intent.ExtraText, url);
			if (MainActivity.This != null) {
				MainActivity.This.StartActivity (intent);
			}
		}
	}
}

