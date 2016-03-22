Branch Xamarin SDK change log

- v2.1.0
  * New version of Xamarin SDK based on native libraries. 

- v1.2.1
  * Debug field has been become static.

- v1.2.0
  * BranchAndroid.GetInstance() has been renamed BranchAndroid.getInstance().
  * Automatical session management has been added. Use AndroidBranch.SetLifeCycleHandlerCallback(Context, IBranchSessionInterface) to enable automatical sesiion management. Use Branch.AutoSessionEnabled to check what type of session management is used.
  * AndroidAppLink support added.
  * Android Push Notification support added.
  * iOS Universal Links suppor added.

- v1.1.0
  * Usage of app key is now deprecated. Use your Branch key, found in the settings page of your Dashboard if possible.
  * Adding ChangeLog.
