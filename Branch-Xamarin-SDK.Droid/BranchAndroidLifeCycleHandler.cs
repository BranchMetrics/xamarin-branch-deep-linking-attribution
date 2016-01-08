using System;
using Android.OS;
using Android.App;
using BranchXamarinSDK;

namespace BranchXamarinSDK
{
	public class BranchAndroidLifeCycleHandler : Java.Lang.Object, Application.IActivityLifecycleCallbacks
	{
		private static int _activeCounter;
		private IBranchSessionInterface _callback;

		public BranchAndroidLifeCycleHandler(IBranchSessionInterface callback = null) {
			_callback = callback;
		}

		public void OnActivityCreated(Activity activity, Bundle savedInstanceState)
		{
		}

		public void OnActivityDestroyed(Activity activity)
		{
		}

		public void OnActivityPaused(Activity activity)
		{
		}

		public void OnActivityResumed(Activity activity)
		{
		}

		public void OnActivitySaveInstanceState(Activity activity, Bundle outState)
		{
		}

		public void OnActivityStarted(Activity activity)
		{
			if (_activeCounter == 0)
			{
				BranchAndroid.getInstance().SetNewUrl(activity.Intent.Data, activity.Intent.Extras);
				Branch branch = Branch.GetInstance();
				branch.Debug = true; // Each install is a "new" install
				branch.InitSessionAsync(_callback);
			}

			_activeCounter++;
		}

		public async void OnActivityStopped(Activity activity)
		{
			_activeCounter--;

			if (_activeCounter == 0)
			{
				Branch branch = Branch.GetInstance();
				await branch.CloseSessionAsync();
			}
		}
	}
}

