
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
using Android.Util;

using BranchXamarinSDK;

namespace SmartSessionAndFloodTest
{
	[Activity (Label = "SecondActivity")]			
	public class SecondActivity : Activity, IBranchSessionInterface
	{
		protected override void OnCreate (Bundle bundle)
		{
			Log.Debug ("TEST", "SecondActivity OnCreate");
			base.OnCreate (bundle);
		}

		override protected void OnStart() {
			Log.Debug ("TEST", "SecondActivity OnStart");
			base.OnStart();
			Log.Debug ("TEST", "Doing init");
			Branch.GetInstance ().InitSessionAsync (this);
		}

		override protected void OnStop() {
			Log.Debug ("TEST", "SecondActivity OnStop");
			Log.Debug ("TEST", "Doing close");
			Branch.GetInstance ().CloseSessionAsync (this);
			base.OnStop();
		}

		#region IBranchSessionInterface implementation

		public void InitSessionComplete (System.Collections.Generic.Dictionary<string, object> data)
		{
			Log.Debug ("TEST", "Session init completed successfully");
		}

		public void CloseSessionComplete ()
		{
			Log.Debug ("TEST", "Session close completed successfully");
		}

		public void SessionRequestError (BranchError error)
		{
			Log.Error ("TEST", "Session error: " + error.ErrorMessage);
		}

		#endregion
	}
}

