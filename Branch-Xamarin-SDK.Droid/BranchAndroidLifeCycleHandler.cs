using System;
using Android.OS;
using Android.App;

namespace BranchXamarinSDK
{
	public class BranchAndroidLifeCycleHandler : Java.Lang.Object, Application.IActivityLifecycleCallbacks
	{
		public void OnActivityCreated(Activity activity, Bundle savedInstanceState) { }
		public void OnActivityDestroyed(Activity activity) { }
		public void OnActivitySaveInstanceState(Activity activity, Bundle outState) { }
		public void OnActivityResumed(Activity activity) { }
		public void OnActivityPaused(Activity activity) { }
		public void OnActivityStopped(Activity activity) { }

		public void OnActivityStarted(Activity activity) {
			BranchAndroid.getInstance().CurrActivity = activity;
		}
	}
}

