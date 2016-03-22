using System;
using Android.OS;
using Android.App;

namespace BranchXamarinSDK
{
	public class BranchAndroidLifeCycleHandler : Java.Lang.Object, Application.IActivityLifecycleCallbacks
	{
		private static int activeCounter;
		public IBranchSessionInterface callback { get; set; }

		public BranchAndroidLifeCycleHandler(IBranchSessionInterface callback = null) {
			this.callback = callback;
		}

		public void OnActivityCreated(Activity activity, Bundle savedInstanceState) { }
		public void OnActivityDestroyed(Activity activity) { }
		public void OnActivitySaveInstanceState(Activity activity, Bundle outState) { }
		public void OnActivityResumed(Activity activity) { }
		public void OnActivityPaused(Activity activity) { }

		public void OnActivityStarted(Activity activity)
		{
			IncreaseActivityCounter (activity);
		}

		public void OnActivityStopped(Activity activity)
		{
			DecreaseActivityCounter (activity);
		}

		private void IncreaseActivityCounter(Activity activity)
		{
			if (activeCounter == 0)
			{
				BranchAndroid.getInstance ().InitSession (callback);
			}

			activeCounter++;
		}

		private void DecreaseActivityCounter(Activity activity)
		{
			if (activeCounter > 0) {
				activeCounter--;

				if (activeCounter == 0)
				{
					BranchAndroid.getInstance ().CloseSession ();
				}
			}
		}
	}
}

