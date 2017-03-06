Branch Xamarin SDK change log

- v3.0.6
  * Updating Branch to Android version 2.5.9 and iOS version 0.13.5

- v3.0.5
  * Updating iOS native library to version 0.12.27
  * Updating Android native library to version 2.5.7
  * Deleting Microsoft.Net.Http dependence
  
- v3.0.4
  * Updating iOS native library to version 0.12.24
  * Updating Android native library to version 2.5.5

- v3.0.3
  * Updating iOS native library to version 0.12.19
  * Updating Android native library to version 2.5.2

- v3.0.2
  * Updating Android native library to version 2.5.1

- v3.0.1
  * Updating iOS native library to version 0.12.16
  * Updating Android native library to version 2.4.7
  
- v3.0.0
  * Updating iOS native library to version 0.12.11
  * Updating Android native library to version 2.4.5
  * Adding examples for iOS and Android applications
  * Adding ResetUserSession()
  * Adding ListOnSpotlight(BranchUniversalObject universalObject)
  * Deleting CloseSession ()
  * Deleting GetShortUrl (IBranchUrlInterface callback, Dictionary<String, dynamic> parameters = null, string channel = "", string stage = "", ICollection<String> tags = null, string feature = "", int duration = 0)
  * Deleting GetShortUrl (IBranchUrlInterface callback, int type = Constants.URL_TYPE_UNLIMITED, Dictionary<String, dynamic> parameters = null, string channel = "", string stage = "", ICollection<String> tags = null, string feature = "")

- v2.1.6
  * Updating iOS native library to version 0.12.3
  * Updating Android native library to version 1.14.3

- v2.1.5
  * Updating iOS native library to version 0.12.2
  * Updating Android native library to version 1.12.1
  * Fixing keywords and metadata in BUO
  * Fixing controls parameters in BLP

- v2.1.4
  * Updating iOS native library to version 0.12.1
  * Updating Android native library to version 1.11.3
  * Adding Init(Application app...) to Xamarin Android SDK

- v2.1.3
  * Fixing trouble with empty expired data string

- v2.1.2
  * Fixing non-string parameters

- v2.1.1
  * Fixing BranchUniversalObject expiration date

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
