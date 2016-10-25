# Branch Xamarin SDK

Branch's deep linking SDK for Xamarin
___

## Table of Contents

1. [Introduction](#introduction)
  + [SDK Details](#sdk-details)
  + [Resources](#resources)
  + [Branch-integrated Xamarin Demo Apps](#branch-integrated-xamarin-demo-apps)

2. Overview of Branch links and Branch keys
  + [Format of Branch links](#format-of-branch-links)
  + [Branch keys](#branch-keys)
  + [Creating a Branch link domain and Branch key for an app](#creating-a-branch-link-domain-and-branch-key-for-an-app)
  
3. [Configuring Xamarin apps for deep linking](#configuring-xamarin-apps-for-deep-linking)
  + [Adding the Branch SDK to a Xamarin Solution](#adding-the-branch-sdk-to-a-xamarin-solution)
    + [Adding the Branch SDK with NuGet](#adding-the-branch-sdk-with-nuget)
    + [Adding the Branch SDK without NuGet](#adding-the-branch-sdk-without-nuget)
  + [Integrating the Branch SDK with a Xamarin Project](#integrating-the-branch-sdk-with-a-xamarin-project)
    + [Xamarin Native projects](#xamarin-native-projects)
      + [Integrating with an iOS Native project](#integrating-with-an-ios-native-project)
        + [Create an Apple device Provisioning Profile for the app](#create-an-apple-device-provisioning-profile-for-the-app)
        + [Enter the app's settings on the Branch dashboard](#enter-the-app's-settings-on-the-branch-dashboard)
        + [Configure the Xamarin project's Info.plist file](#configure-the-xamarin-project's-info.plist-file)
        + [Configure the Xamarin project's Associated Domains entitlement](#configure-the-xamarin-project's-associated-domains-entitlement)
        + [Add Branch calls to the AppDelegate.cs file](#add-branch-calls-to-the-appdelegate.cs-file)
      + [Integrating with an Android Native project](#integrating-with-an-android-native-project)
        + [Add the app's Branch key to the Strings.xml file](#add-the-app's-branch-key-to-the-strings.xml-file)

___

## Introduction

### SDK Details

Current version: **3.0**  
iOS SDK compiled footprint: **180kb**  
Android SDK compiled footprint: **187kb**  

### Resources
- This document - *Start Here*
- [Branch Integration Engineering Portal](http://support.branch.io)
- [Changelog](ChangeLog.md)
- [Testing](https://dev.branch.io/getting-started/integration-Testing/guide/xamarin/)

### Branch-integrated Xamarin Demo Apps

There are four fully-functional demo apps included in this repository: a Xamarin Native and Xamarin Forms apps for both iOS and Android platforms. Use these apps as reference models for integrating the Branch SDK.

**Testbed-Xamarin (Native apps)**

- [iOS](https://github.com/BranchMetrics/xamarin-branch-deep-linking/tree/master/Examples/droid_example)  
- [Android](https://github.com/BranchMetrics/xamarin-branch-deep-linking/tree/master/Examples/ios_example)  

**Testbed-XamarinForms (Forms apps)**

- [iOS](https://github.com/BranchMetrics/xamarin-branch-deep-linking/tree/master/Branch-Xamarin-Testbed.iOS)  
- [Android](https://github.com/BranchMetrics/xamarin-branch-deep-linking/tree/master/Branch-Xamarin-Testbed.Droid)  

Should you run into issues with the SDK, please check that they are present in the appropriate demo app before submitting any issue as a bug.

___

## Overview of Branch links and Branch keys 

### Format of Branch links

Branch links consist of an app-specific base domain (*testbed-xamarin.app.link*, for example) followed by an alphanumeric suffix. This suffix, referred to as the *alias*, can be either randomly generated (*FCIWxFeBGx*, for example) or manually-defined (*testlink*, for example). The app-specific base domain used to create the links is termed the *Branch link domain*.

A Branch-integrated app called TestBed-Xamarin and assigned the dafult Branch link domain *testbed-xamarin.app.link* has the following Branch links:

- https://testbed-xamarin.app.link/FCIWxFeBGx
- https://testbed-xamarin.app.link/testlink

Note that when using the 'app.link' default link domain there is a second, alternate, form of the link domain that comes into play when displaying Branch Deepviews - the *alternate link domain*. This *alternate link domain* sees the domain's '.app.link' string replaced by '-alternate.app.link'. If you are using a default app.link link domain, both the regular and alternate domains will be needed when configuring a project to support deep linking.

### Branch keys

Branch keys consist of a prefix (**key_live_** or **key_test_**) followed by a string of 32 aphanumeric characters (*key_live_kdzhBMBYt5Pi4g4DVRfQbdkbqDlm5rIv*, for example). Branch keys are used to associate apps with Branch links. An app's Branch key is required to initialize the Branch SDK. Data associated with Branch links can only be read by apps that  use the same Branch key.

Note that the **Live** and **Test** apps on the Branch dashboard are completely separate; each has its own Branch key. Even when **Live** and **Test** sections of the dashboard have been configured identically and links from both are able to open up a particular app, the app will only receive link data for which it has the matching Branch key.

### Creating a Branch link domain and Branch key for an app

Register the app on the Branch dashboard, here: [https://dashboard.branch.io](https://dashboard.branch.io)

The Branch key can be found on the [General Settings](https://dashboard.branch.io/settings) page. The app's Branch link domain  will be listed at the very bottom of the [Link Settings](https://dashboard.branch.io/link) page.

___

## Configuring Xamarin apps for deep linking

### Adding the Branch SDK to a Xamarin Solution

#### Adding the Branch SDK with NuGet

The Branch Xamarin SDK is available as a NuGet package. The [Branch NuGet package](https://www.nuget.org/packages/Branch-Xamarin-Linking-SDK) must be added to each of the Xamarin projects that will use Branch methods.

To add the Branch NuGet package to a project:

1. Right-click on each project and select `Add` > `Add NuGet Package`  
2. Find the _Branch Xamarin SDK_ package and add it to the project

#### Adding the Branch SDK without NuGet

If, instead of using NuGet, you would rather build and reference the Branch assemblies directly:

1. Clone this repository to the local machine: `https://github.com/BranchMetrics/xamarin-branch-deep-linking.git`
2. Add the `Branch-Xamarin-SDK` project to the solution and reference it from the Android, iOS and Forms (if applicable) projects
3. Add the `Branch-Xamarin-SDK.Droid` project to the solution and reference it from the Android project, if any
4. Add the `Branch-Xamarin-SDK.iOS` project and reference it from the iOS project, if any

___

### Integrating the Branch SDK with a Xamarin Project

The steps for integrating the Branch SDK with a project differ depending on whether or not the project is creating a Xamarin Forms application and on which mobile platform the project is intended, iOS or Android. Instructions for each of the four scenarios are provided below.
___

#### Xamarin Native projects

##### Integrating with an iOS Native project

###### Create an Apple device Provisioning Profile for the app

1. Open Xcode and create a new project with the same name as your Xamarin iOS project
2. On the Xcode project's **General** tab, verify the app's Bundle Identifier is correct and select the appropriate Team (be sure to resolve any errors here)
3. Select the **Capabilities** tab and enable the **Associated Domains** entitlement
4. Create 'applinks:' entries for the Branch link domain and the alternate link domain (the link domain can be found at the bottom of the Branch dashboard's [Link Settings](https://dashboard.branch.io/#/settings/link) page). For example, the entries for the app *TestBed-Xamarin* would be:
  - `applinks:testbed-xamarin.app.link`  
  - `applinks:testbed-xamarin-alternate.app.link` 
5. Use Xcode to run this newly-created app on an iOS device. This will create and install a Provisioning Profile with the proper entitlements on that device.
6. Close Xcode

###### Enter the app's settings on the Branch dashboard

1. On the [Link Settings](https://dashboard.branch.io/#/settings/link) page, check the **I have an iOS App** checkbox
2. Enter the app's URI Scheme in the **iOS URI Scheme** field (for an app with the URI Scheme *testbed-xamarin*, for example, the entry would be: `testbed-xamarin://`)
3. Enter the app's Apple Store name in the **Apple Store Search** field (if the app is not yet available on the App Store select **Custom URL** and enter as a placeholder the URL of an appropriate web site - the exact site does not matter)
4. Check the **Enable Universal Links** checkbox
5. Enter the app's Bundle Identifier and Apple App Prefix as shown on the [Apple Developer Portal](https://developer.apple.com/account/ios/identifier/bundle)

###### Configure the Xamarin project's **Info.plist** file 

1. Open the **Info.plist** file and click on the **Advanced** tab  
2. In the **URL Types** section, click the **Add URL Type** button   
  - **Identifier:** Branch Scheme
  - **URL Schemes:** {the app's URI Scheme - 'appname', for example}
  - **Role:** Editor  

![iOS URI Scheme](https://github.com/BranchMetrics/Xamarin-Deferred-Deep-Linking-SDK/raw/master/docs/images/branch_ios_uri.png)

###### Configure the Xamarin project's **Associated Domains** entitlement

1. Open the **Entitlements.plist** file and browse to **Associated Domains**
2. Create entries for both the app's link domain and its alternate link domain. The entries for the TestBed-Xamarin app would be:
    - `applinks:testbed-xamarin.app.link` 
    - `applinks:testbed-xamarin-alternate.app.link`  
![Associated Domains](https://github.com/BranchMetrics/Xamarin-Deferred-Deep-Linking-SDK/raw/master/docs/images/branch_ios_domains.png)

##### Add Branch calls to the **AppDelegate.cs** file

Branch initialization occurs within the `FinishedLaunching` method of the **AppDelegate.cs** file. Branch calls are also required in the `OpenUrl`, `ContinueUserActivity`, and `ReceiveRemoteNotification` methods to ensure that Branch link information is handled properly whenever the app becomes active.

Whenever the app becomes active, the Branch SDK will reach out to the Branch back end to retrieve any available link parameters. If the app became active due to a click on a Branch link, the link data will be returned in the `InitSessionComplete method`. This is where any deep link routing logic should reside. Any error in retrieving Branch link data from the back end will returned in the `SessionRequestError method`.

```csharp
using Foundation;
using UIKit;
using BranchXamarinSDK;
using BranchXamarinSDK.iOS;
using System;

namespace TestiOSApp.iOS
{
	[Register("AppDelegate")]
	public class AppDelegate : UIApplicationDelegate, IBranchBUOSessionInterface
	{
	
		public override UIWindow Window
		{
			get;
			set;
		}

		public override bool FinishedLaunching(UIApplication application, NSDictionary launchOptions)
		{
			BranchIOS.Debug = true; // Set to 'false' before releasing to production
			BranchIOS.Init("key_live_cgEguO4UiDJSL4HIyTu85dkkDAdz38ER", launchOptions, this);

			return true;
		}

		public override bool OpenUrl(UIApplication application, NSUrl url, string sourceApplication, NSObject annotation)
		{
			return BranchIOS.getInstance().OpenUrl(url);
		}

		public override bool ContinueUserActivity(UIApplication application, NSUserActivity userActivity,
					  UIApplicationRestorationHandler completionHandler)
		{
			return BranchIOS.getInstance().ContinueUserActivity(userActivity);
		}

		public override void ReceivedRemoteNotification(UIApplication application, NSDictionary userInfo)
		{
			BranchIOS.getInstance().HandlePushNotification(userInfo);
		}

		public void InitSessionComplete(BranchUniversalObject buo, BranchLinkProperties blp)
		{
			NSObject[] keys = {
				NSObject.FromObject("+is_first_session")
			};

			NSObject[] values = { NSObject.FromObject(0) };
			if (buo.metadata.ContainsKey("+is_first_session"))
			{
				values[0] = NSObject.FromObject(buo.metadata["+is_first_session"]);
			}

			NSDictionary nsData = NSDictionary.FromObjectsAndKeys(values, keys);
		}

		public void SessionRequestError(BranchError error)
		{
			Console.WriteLine("Branch error: " + error.ErrorCode);
			Console.WriteLine(error.ErrorMessage);
		}

	}
}
```

___

##### Integrating with an Android Native project

###### Add the app's Branch key to the Strings.xml file

Add the Branch key to the Android project's **Resources/values/Strings.xml** file. This file contains values that can be accessed by the app's Application class.

```xml
<?xml version="1.0" encoding="utf-8"?>
<resources>
	<string name="app_name">TestBed-Xamarin</string>
	<string name="branch_key">key_live_kdzhBMBYt5Pi4g4DVRfQbdkbqDlm5rIv</string>
</resources>
```

##### Configure project's *Application* class

- Set the Branch SDK's initialization parameters  
- Override the `OnCreate()` method to call `BranchAndroid.GetAutoInstance`

In the sample Xamarin Native project included in the Branch SDK's **Examples/droid_example** folder this is is the TestBedApp.cs file:

```csharp
using Foundation;
using UIKit;
using BranchXamarinSDK;
using BranchXamarinSDK.iOS;
using System;

namespace TestiOSApp.iOS
{
	// The UIApplicationDelegate for the application. This class is responsible for launching the
	// User Interface of the application, as well as listening (and optionally responding) to application events from iOS.
	[Register("AppDelegate")]
	public class AppDelegate : UIApplicationDelegate, IBranchBUOSessionInterface
	{
		// class-level declarations

		public override UIWindow Window
		{
			get;
			set;
		}

		public override bool FinishedLaunching(UIApplication application, NSDictionary launchOptions)
		{
			BranchIOS.Debug = true; // Set to 'false' before releasing to production
			BranchIOS.Init("key_live_cgEguO4UiDJSL4HIyTu85dkkDAdz38ER", launchOptions, this);

			return true;
		}

		public override bool OpenUrl(UIApplication application, NSUrl url, string sourceApplication, NSObject annotation)
		{
			return BranchIOS.getInstance().OpenUrl(url);
		}

		public override bool ContinueUserActivity(UIApplication application, NSUserActivity userActivity,
					  UIApplicationRestorationHandler completionHandler)
		{
			return BranchIOS.getInstance().ContinueUserActivity(userActivity);
		}

		public override void ReceivedRemoteNotification(UIApplication application, NSDictionary userInfo)
		{
			BranchIOS.getInstance().HandlePushNotification(userInfo);
		}

		public void InitSessionComplete(BranchUniversalObject buo, BranchLinkProperties blp)
		{
			NSObject[] keys = {
				NSObject.FromObject("+is_first_session")
			};

			NSObject[] values = { NSObject.FromObject(0) };
			if (buo.metadata.ContainsKey("+is_first_session"))
			{
				values[0] = NSObject.FromObject(buo.metadata["+is_first_session"]);
			}

			NSDictionary nsData = NSDictionary.FromObjectsAndKeys(values, keys);
		}

		public void SessionRequestError(BranchError error)
		{
			Console.WriteLine("Branch error: " + error.ErrorCode);
			Console.WriteLine(error.ErrorMessage);
		}
	}
}
```

| Key | Value
| --- | ---
| io.branch.sdk.TestMode | Setting this parameter to *true* enables Debug Mode, which causes simple uninstall/reinstalls of the app to trigger *install* events. Be sure to disable this before deploying to production. Note that enabling Debug Mode on Android also forces the app to use the Branch *Test* key if this key has been added to the project. Apps running with a *Test* key will be unable to receive data from Branch links created with the *Live* key.
| io.branch.sdk.BranchKey | The app's Branch key. Both a *Live* key and a *Test* key can be added to the Strings.xml file. When *Test* Mode is enabled the app will automatically use the *Test* key, if one has been specified.

##### Initialize Branch and configure Branch session management

Branch must be initilialized in the OnCreate method of either the Application class or the first Activity launched by the app. The OnNewIntent method must be added to retrieve the latest link identifier when the app becomes active due to a Branch link click.

Branch initializes asynchronously, with Branch link parameters being returned following a network call to Branch. If initialization is successful, the InitSessionComplete method will be invoked. If initialization is unsuccessful, the or SessionRequestError method will be invoked. Deep link routing logic should be located in the InitSessionComplete method.

In the code example below, from the sample Xamarin Native project included in the Branch SDK's **Examples/droid_example** folder, the following Branch initialization and session management steps have been added to MainActivity.cs:

- Register an Activity to respond to the app's URI Scheme
- Ensure the Activity is launched in `singleTask` mode
- Override the OnCreate method and initialize the Branch SDK
- Override the OnNewIntent method
- Add an InitSessionComplete method for processing Branch link information (this is where deep link routing code should be located)
- Add a SessionRequestError method to handle situations where Branch fails to initialize

```
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
	[Activity(Label = "TestBed-Xamarin", MainLauncher = true, Icon = "@mipmap/icon", LaunchMode = Android.Content.PM.LaunchMode.SingleTask)]

	[IntentFilter(new[] { "android.intent.action.VIEW" },
		Categories = new[] { "android.intent.category.DEFAULT", "android.intent.category.BROWSABLE" },
		DataScheme = "testbed-xamarin",
		DataHost = "open")]

	[IntentFilter(new[] { "android.intent.action.VIEW" },
		Categories = new[] { "android.intent.category.DEFAULT", "android.intent.category.BROWSABLE" },
		DataScheme = "https",
		DataHost = "testbed-xamarin.app.link")]

	public class MainActivity : Activity, IBranchSessionInterface
	{

		protected override void OnCreate(Bundle savedInstanceState)
		{
			base.OnCreate(savedInstanceState);

			BranchAndroid.Init(this, Resources.GetString(Resource.String.branch_key), this);
		}

		// Ensure we get the updated link identifier when the app becomes active
		// due to a Branch link click after having been in the background
		protected override void OnNewIntent(Intent intent)
		{
			this.Intent = intent;
		}

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
	}
}
```

##### Add app capabilities in the **AndroidManifest.xml** file

In the *Required permissions* section of **AndroidManifest.xml**, configure the following permissions:

- *AccessNetworkState*
- *Internet*

Additional reading on the Android manifest

- [Working with android manifest.xml](https://developer.xamarin.com/guides/android/advanced_topics/working_with_androidmanifest.xml/)
- [Add permissions to android manifest](https://developer.xamarin.com/recipes/android/general/projects/add_permissions_to_android_manifest/)

___

#### Xamarin Forms projects

##### Integrating with an iOS Forms app

###### Create an Apple device Provisioning Profile for the app

1. Open Xcode and create a new project with the same name as your Xamarin iOS project
2. On the Xcode project's **General** tab, enter the app's Bundle Identifier and select the appropriate Team (be sure to resolve any errors here)
3. Select the **Capabilities** tab and enable the **Associated Domains** entitlement
4. Create 'applinks:' entries for the Branch link domain assigned to the app (the link domain can be found at the bottom of the Branch dashboard's [Link Settings](https://dashboard.branch.io/#/settings/link) page). For example, the entries for the app *TestBed-Xamarin* would be:
  - `applinks:testbed-xamarin.app.link`  
  - `applinks:testbed-xamarin-alternate.app.link` 
5. Use Xcode to run this newly-created app on an iOS device. This will create and install a Provisioning Profile with the proper entitlements on that device.
6. Close Xcode

###### Enter the app's settings on the Branch dashboard

1. On the [Link Settings](https://dashboard.branch.io/#/settings/link) page, check the **I have an iOS App** checkbox
2. Enter the app's URI Scheme in the **iOS URI Scheme** field (for an app with the URI Scheme *testbed-xamarin*, for example, the entry would be: `testbed-xamarin://`)
3. Enter the app's Apple Store name in the **Apple Store Search** field (if the app is not yet available on the App Store select **Custom URL** and enter as a placeholder the URL of an appropriate web site - the exact site does not matter)
4. Check the **Enable Universal Links** checkbox
5. Enter the app's Bundle Identifier and Apple App Prefix as shown on the [Apple Developer Portal](https://developer.apple.com/account/ios/identifier/bundle)

###### Configure the Xamarin project's **Info.plist** file 

1. Open the **Info.plist** file and click on the **Advanced** tab  
2. In the **URL Types** section, click the **Add URL Type** button   
  - **Identifier:** Branch Scheme
  - **URL Schemes:** {the app's URI Scheme - 'appname', for example}
  - **Role:** Editor  

![IOS Uri](https://github.com/BranchMetrics/Xamarin-Deferred-Deep-Linking-SDK/raw/master/docs/images/branch_ios_uri.png)

###### Configure the Xamarin project's **Associated Domains** entitlement

1. Open the **Entitlements.plist** file and browse to **Associated Domains** (if this file does not already exist, create it)
2. Create entries for both the app's link domain and its alternate link domain. The entries for the TestBed-Xamarin app would be:
    - `applinks:testbed-xamarin.app.link` 
    - `applinks:testbed-xamarin-alternate.app.link`  

![Associated Domains](https://github.com/BranchMetrics/Xamarin-Deferred-Deep-Linking-SDK/raw/master/docs/images/branch_ios_domains.png)

##### Add Branch calls to the **AppDelegate.cs** file

To ensure that the Branch SDK initializes when the app starts and can retrieve link parameters whenever the app becomes active, Branch initialization occurs within the `FinishedLaunching` method of the AppDelegate.cs file. Branch calls are also required in the OpenUrl, ContinueUserActivity, and ReceiveRemoteNotification methods to ensure that Branch link information is handled properly whenever the app becomes active.

```csharp
[Register ("AppDelegate")]
public class AppDelegate : global::Xamarin.Forms.Platform.iOS.FormsApplicationDelegate
{
	public override bool FinishedLaunching (UIApplication application, NSDictionary launchOptions)
	{
		global::Xamarin.Forms.Forms.Init ();

		BranchIOS.Debug = true;

		AppBUO appBUO = new AppBUO ();
		BranchIOS.Init ("key_live_bmEetSmsaI8OS6fCiyS5VmjhDqnfXBxP", launchOptions, appBUO);
		LoadApplication (appBUO);

		return base.FinishedLaunching(application, launchOptions);
	}

	public override bool OpenUrl (UIApplication application, NSUrl url, string sourceApplication, NSObject annotation) {
		return BranchIOS.getInstance ().OpenUrl (url);
	}

	public override bool ContinueUserActivity (UIApplication application, NSUserActivity userActivity, UIApplicationRestorationHandler completionHandler) {
		return BranchIOS.getInstance ().ContinueUserActivity (userActivity);
	}

	public override void ReceivedRemoteNotification (UIApplication application, NSDictionary userInfo) {
		BranchIOS.getInstance ().HandlePushNotification (userInfo);
	}
}
```

##### In the Xamarin Forms project, create a class to handle Branch link data 

Branch initializes asynchronously, with Branch link parameters being returned following a network call to Branch. If initialization is successful, the InitSessionComplete methods will be invoked. If initialization is unsuccessful, the SessionRequestError methods will be invoked. Deep link routing logic should be located in the InitSessionComplete method.

For the TestBed-Xamarin app, two classes are created in the Forms project (not the .iOS or .Droid projects) to handle process link data returned by Branch:

**Branch-Xamarin-SDK-Testbed.cs**
 
```csharp
using BranchXamarinSDK;
using System.Collections.Generic;
using System.ComponentModel;
using Xamarin.Forms;

namespace BranchXamarinTestbed
{
	public class App : Application, IBranchSessionInterface
	{
		private TestPage testPage;

		public App ()
		{
			var navPage = new NavigationPage ();
			testPage = new TestPage ();
			navPage.PushAsync (testPage);

			MainPage = navPage;
		}
			
		#region IBranchSessionInterface implementation

		public void InitSessionComplete (Dictionary<string, object> data)
		{
			testPage.InitSessionComplete (data);
		}

		public void CloseSessionComplete ()
		{
			testPage.CloseSessionComplete ();
		}

		public void SessionRequestError (BranchError error)
		{
			testPage.SessionRequestError (error);
		}

		#endregion
	}
}
```

**Branch-Xamarin-SDK-TestbedBUO.cs**

```csharp
using BranchXamarinSDK;
using System.Collections.Generic;
using System.ComponentModel;
using Xamarin.Forms;

namespace BranchXamarinTestbed
{
	public class AppBUO : Application, IBranchBUOSessionInterface
	{
		private TestPageBUO testPage;

		public AppBUO ()
		{
			var navPage = new NavigationPage ();
			testPage = new TestPageBUO ();
			navPage.PushAsync (testPage);

			MainPage = navPage;
		}
			
		#region IBranchBUOSessionInterface implementation

		public void InitSessionComplete(BranchUniversalObject buo, BranchLinkProperties blp) {
			testPage.InitSessionComplete (buo, blp);
		}
						
		public void SessionRequestError (BranchError error)
		{
			testPage.SessionRequestError (error);
		}

		#endregion
	}
}
```

___

##### Integrating with an Android Forms app

###### Add the app's Branch key to the Strings.xml file

Add the Branch key to the Android project's **Resources/values/Strings.xml** file. This file contains values that can be accessed by the app's Application class.

```xml
<?xml version="1.0" encoding="utf-8"?>
<resources>
	<string name="app_name">TestBed-XamarinForms</string>
	<string name="branch_key">key_Live_bmEetSmsaI8OS6fCiyS5VmjhDqnfXBxP</string>
</resources>
```

##### Configure the .Droid project's *Application* class

- Set the Branch SDK's initialization parameters  
- Override the `OnCreate()` method to call `BranchAndroid.GetAutoInstance`

In the sample Xamarin Forms project included in the Branch SDK's **Branch-Xamarin-Testbed.Droid** folder this is is the TestBedApplication.cs file:

```csharp
using System;
using Android.App;
using Android.Content;
using Android.Runtime;
using BranchXamarinSDK;

namespace BranchXamarinTestbed.Droid
{
	[Application (AllowBackup = true, Icon = "@mipmap/icon", Label = "@string/app_name")]
	[MetaData("io.branch.sdk.auto_link_disable", Value = "false")]
	[MetaData("io.branch.sdk.TestMode", Value = "true")]
	[MetaData("io.branch.sdk.BranchKey", Value = "@string/branch_key")]

	public class TestBedApplication: Application
	{
		public TestBedApplication(IntPtr javaReference, JniHandleOwnership transfer) : base(javaReference, transfer)
    	{
		}

		public override void OnCreate()
		{
			base.OnCreate();
			BranchAndroid.GetAutoInstance(this.ApplicationContext);
		}
	}
}
```

| Key | Value
| --- | ---
| io.branch.sdk.TestMode | Setting this parameter to *true* enables Debug Mode, which causes simple uninstall/reinstalls of the app to trigger *install* events. Be sure to disable this before deploying to production. Note that enabling Debug Mode on Android also forces the app to use the Branch *Test* key if this key has been added to the project. Apps running with a *Test* key will be unable to receive data from Branch links created with the *Live* key.
| io.branch.sdk.BranchKey | The app's Branch key. Both a *Live* key and a *Test* key can be added to the Strings.xml file. When *Test* Mode is enabled the app will automatically use the *Test* key, if one has been specified.

##### Initialize Branch

Branch must be initilialized in the OnCreate method of either the Application class or the first Activity launched by the app. The OnNewIntent method must be added to retrieve the latest link identifier when the app becomes active due to a Branch link click.

In the code example below, from the sample Xamarin Native project included in the Branch SDK's **Branch-Xamarin-Testbed.Droid** folder, the following Branch initialization and session management steps have been added to MainActivity.cs:

- Register an Activity to respond to the app's URI Scheme
- Ensure the Activity is launched in `singleTask` mode
- Override the OnCreate method and initialize the Branch SDK
- Override the OnNewIntent method

```csharp
using Android.App;
using Android.Content;
using Android.Content.PM;
using Android.Widget;
using Android.OS;
using BranchXamarinSDK;
using BranchXamarinTestbed;

namespace BranchXamarinTestbed.Droid
{
	[Activity (Label = "io.branch.testbed-xamarinforms", MainLauncher = true, Icon = "@mipmap/icon", LaunchMode = LaunchMode.SingleTask)]

	[IntentFilter (new[]{"android.intent.action.VIEW"},
		Categories=new[]{"android.intent.category.DEFAULT", "android.intent.category.BROWSABLE"},
		DataScheme="testbed-xamarinforms",
		DataHost="open")]

	[IntentFilter(new[] { "android.intent.action.VIEW" },
		Categories = new[] { "android.intent.category.DEFAULT", "android.intent.category.BROWSABLE" },
		DataScheme = "https",
		DataHost = "testbed-xamarinforms.app.link")]

	public class MainActivity : global::Xamarin.Forms.Platform.Android.FormsApplicationActivity
	{
		protected override void OnCreate (Bundle savedInstanceState)
		{
			base.OnCreate (savedInstanceState);
			global::Xamarin.Forms.Forms.Init (this, savedInstanceState);

			AppBUO appBUO = new AppBUO ();
			BranchAndroid.Init (this, GetString(Resource.String.branch_key), appBUO);
			LoadApplication (appBUO);
		}

		protected override void OnNewIntent(Intent intent) {
			this.Intent = intent;
		}
	}
}
```

##### Add app capabilities in the **AndroidManifest.xml** file

In the *Required permissions* section of **AndroidManifest.xml**, configure the following permissions:

- *AccessNetworkState*
- *Internet*

Additional reading on the Android manifest

- [Working with android manifest.xml](https://developer.xamarin.com/guides/android/advanced_topics/working_with_androidmanifest.xml/)
- [Add permissions to android manifest](https://developer.xamarin.com/recipes/android/general/projects/add_permissions_to_android_manifest/)

#### Configure Branch session management
 
##### In the Xamarin Forms project, create classes to handle Branch link data 

Branch initializes asynchronously, with Branch link parameters being returned following a network call to Branch. If initialization is successful, the InitSessionComplete methods will be invoked. If initialization is unsuccessful, the SessionRequestError methods will be invoked. Deep link routing logic should be located in the InitSessionComplete method.

For the TestBed-XamarinForms app, two classes are created in the Forms project (not the .iOS or .Droid projects) to handle link data returned by Branch:

**Branch-Xamarin-SDK-Testbed.cs**
 
```csharp
using BranchXamarinSDK;
using System.Collections.Generic;
using System.ComponentModel;
using Xamarin.Forms;

namespace BranchXamarinTestbed
{
	public class App : Application, IBranchSessionInterface
	{
		private TestPage testPage;

		public App ()
		{
			var navPage = new NavigationPage ();
			testPage = new TestPage ();
			navPage.PushAsync (testPage);

			MainPage = navPage;
		}
			
		#region IBranchSessionInterface implementation

		public void InitSessionComplete (Dictionary<string, object> data)
		{
			testPage.InitSessionComplete (data);
		}

		public void CloseSessionComplete ()
		{
			testPage.CloseSessionComplete ();
		}

		public void SessionRequestError (BranchError error)
		{
			testPage.SessionRequestError (error);
		}

		#endregion
	}
}
```

**Branch-Xamarin-SDK-TestbedBUO.cs**

```csharp
using BranchXamarinSDK;
using System.Collections.Generic;
using System.ComponentModel;
using Xamarin.Forms;

namespace BranchXamarinTestbed
{
	public class AppBUO : Application, IBranchBUOSessionInterface
	{
		private TestPageBUO testPage;

		public AppBUO ()
		{
			var navPage = new NavigationPage ();
			testPage = new TestPageBUO ();
			navPage.PushAsync (testPage);

			MainPage = navPage;
		}
			
		#region IBranchBUOSessionInterface implementation

		public void InitSessionComplete(BranchUniversalObject buo, BranchLinkProperties blp) {
			testPage.InitSessionComplete (buo, blp);
		}
						
		public void SessionRequestError (BranchError error)
		{
			testPage.SessionRequestError (error);
		}

		#endregion
	}
}
```

____

## Branch SDK Method Reference

### Retrieve session (install or open) parameters

These session parameters will be available at any point later on with this command. If no params, the dictionary will be empty. This refreshes with every new session (app installs AND app opens)

```csharp
Dictionary<string, object> sessionParams = Branch.GetInstance().GetLatestReferringParams();
```
or

```csharp
BranchUniversalObject buo = Branch.GetInstance().GetLastReferringBranchUniversalObject();
BranchLinkProperties blp = Branch.GetInstance().GetLastReferringBranchLinkProperties();
```


### Retrieve install (install only) parameters

If you ever want to access the original session params (the parameters passed in for the first install event only), you can use this line. This is useful if you only want to reward users who newly installed the app from a referral link or something.

```csharp
Branch branch = Branch.GetInstance ();
Dictionary<string, object> installParams = branch.GetFirstReferringParams();
```
or

```csharp
BranchUniversalObject buo = Branch.GetInstance().GetFirstReferringBranchUniversalObject();
BranchLinkProperties blp = Branch.GetInstance().GetFirstReferringBranchLinkProperties();
```

### Persistent identities

Often, you might have the own user IDs, or want referral and event data to persist across platforms or uninstall/reinstall. It's helpful if you know the users access the service from different devices. This where we introduce the concept of an 'identity'.

To identify a user, just call:

```csharp
Branch branch = Branch.GetInstance (); 
branch.SetIdentity("the user id", this);  // Where this implements IBranchIdentityInterface
```

#### Logout

If you provide a logout function in the app, be sure to clear the user when the logout completes. This will ensure that all the stored parameters get cleared and all events are properly attributed to the right identity.

**Warning** this call will clear the referral credits and attribution on the device.

```csharp
Branch branch = Branch.GetInstance ();
branch.Logout(this); // Where this implements IBranchIdentityInterface
```

### Register custom events

```csharp
Branch branch = Branch.GetInstance ();
branch.UserCompletedAction("the_custom_event");
```

OR if you want to store some state with the event

```csharp
Branch branch = Branch.GetInstance ();
Dictionary<string, object> data = new Dictionary<string, object>();
data.Add("sku", "123456789");
branch.UserCompletedAction("purchase_event", data);
```

Some example events you might want to track:

```csharp
"complete_purchase"
"wrote_message"
"finished_level_ten"
```

____

## Generate Tracked, Deep Linking URLs (pass data across install and open)

### Shortened links

There are a bunch of options for creating these links. You can tag them for analytics in the dashboard, or you can even pass data to the new installs or opens that come from the link click. How awesome is that? You need to pass a callback for when you link is prepared (which should return very quickly, ~ 50 ms to process).

For more details on how to create links, see the [Branch link creation guide](https://github.com/BranchMetrics/Branch-Integration-Guides/blob/master/url-creation-guide.md)


```csharp
// associate data with a link
// you can access this data from any instance that installs or opens the app from this link (amazing...)

BranchUniversalObject universalObject = new BranchUniversalObject();
universalObject.canonicalIdentifier = "id12345";
universalObject.title = "id12345 title";
universalObject.contentDescription = "My awesome piece of content!";
universalObject.imageUrl = "https://s3-us-west-1.amazonaws.com/branchhost/mosaic_og.png";
universalObject.metadata.Add("foo", "bar");

BranchLinkProperties linkProperties = new BranchLinkProperties();
linkProperties.tags.Add("tag1");
linkProperties.tags.Add("tag2");
linkProperties.feature = "sharing";
linkProperties.channel = "facebook";
linkProperties.controlParams.Add("$desktop_url", "http://example.com");

Branch.GetInstance().GetShortURL (callback,
		                          universalObject,
		                          linkProperties);
```

**Note**
You can customize the Facebook OG tags of each URL if you want to dynamically share content by using the following _optional keys in the data dictionary_. Please use this [Facebook tool](https://developers.facebook.com/tools/debug/og/object) to debug the OG tags!

| Key | Value
| --- | ---
| "$og_title" | The title you'd like to appear for the link in social media
| "$og_description" | The description you'd like to appear for the link in social media
| "$og_image_url" | The URL for the image you'd like to appear for the link in social media
| "$og_video" | The URL for the video 
| "$og_url" | The URL you'd like to appear
| "$og_app_id" | the OG app ID. Optional and rarely used.

Also, you do custom redirection by inserting the following _optional keys in the dictionary_:

| Key | Value
| --- | ---
| "$desktop_url" | Where to send the user on a desktop or laptop. By default it is the Branch-hosted text-me service
| "$android_url" | The replacement URL for the Play Store to send the user if they don't have the app. _Only necessary if you want a mobile web splash_
| "$ios_url" | The replacement URL for the App Store to send the user if they don't have the app. _Only necessary if you want a mobile web splash_
| "$ipad_url" | Same as above but for iPad Store
| "$fire_url" | Same as above but for Amazon Fire Store
| "$blackberry_url" | Same as above but for Blackberry Store
| "$windows_phone_url" | Same as above but for Windows Store

You have the ability to control the direct deep linking of each link by inserting the following _optional keys in the dictionary_:

| Key | Value
| --- | ---
| "$deeplink_path" | The value of the deep link path that you'd like us to append to the URI. For example, you could specify "$deeplink_path": "radio/station/456" and we'll open the app with the URI "theapp://radio/station/456?link_click_id=branch-identifier". This is primarily for supporting legacy deep linking infrastructure. 
| "$always_deeplink" | true or false. (default is not to deep link first) This key can be specified to have our linking service force try to open the app, even if we're not sure the user has the app installed. If the app is not installed, we fall back to the respective app store or $platform_url key. By default, we only open the app if we've seen a user initiate a session in the app from a Branch link (has been cookied and deep linked by Branch)


## New feature: BranchUniversalObject
### What is the Branch Universal Object?


Our previous method of creating links was a single call `GetShortUrl`, where you passed in all of the metadata and link properties in order to get a deep link back. We’re adding just one more step in between that we believe makes a lot more sense.

```
Dictionary<string, object> parameters = new Dictionary<string, object>();
parameters.Add("name", "test name");
parameters.Add("message", "hello there with short url");
parameters.Add("$og_title", "this is a title");
parameters.Add("$og_description", "this is a description");
parameters.Add("$og_image_url", "https://s3-us-west-1.amazonaws.com/branchhost/mosaic_og.png");

List<string> tags = new List<string>();
tags.Add("tag1");
tags.Add("tag2");

Branch.GetInstance().GetShortUrl (callback,
		                          Constants.URL_TYPE_UNLIMITED,
		                          parameters,
		                          "test_channel",
		                          "testt_stage",
		                          tags,
		                          "testt_feature");

```

#### Here’s the new mechanism using the Branch Universal Object:
```
BranchUniversalObject universalObject = new BranchUniversalObject();
universalObject.canonicalIdentifier = "id12345";
universalObject.title = "id12345 title";
universalObject.contentDescription = "My awesome piece of content!";
universalObject.imageUrl = "https://s3-us-west-1.amazonaws.com/branchhost/mosaic_og.png";
universalObject.metadata.Add("foo", "bar");

BranchLinkProperties linkProperties = new BranchLinkProperties();
linkProperties.tags.Add("tag1");
linkProperties.tags.Add("tag2");
linkProperties.feature = "sharing";
linkProperties.channel = "facebook";
linkProperties.controlParams.Add("$desktop_url", "http://example.com");

Branch.GetInstance().GetShortURL (callback,
		                          universalObject,
		                          linkProperties);

```
As you can see, it’s a bit more code but a lot more structured. What’s really cool about this is that once you’ve created the Universal Object, you can then do a bunch of neat things like:

######1. Initialize Branch

```
InitSession (IBranchBUOSessionInterface callback)
```

######2. Register a view on the content (for a new product coming soon)

```
RegisterView (BranchUniversalObject universalObject)
```

######3. Create a share sheet that lets the user share across all channels

```
ShareLink (IBranchLinkShareInterface callback,
		   BranchUniversalObject universalObject,
		   BranchLinkProperties linkProperties,
		   string message)
```

____

## Referral system rewarding functionality

In a standard referral system, you have 2 parties: the original user and the invitee. Our system is flexible enough to handle rewards for all users. Here are a couple example scenarios:

1) Reward the original user for taking action (eg. inviting, purchasing, etc)

2) Reward the invitee for installing the app from the original user's referral link

3) Reward the original user when the invitee takes action (eg. give the original user credit when their the invitee buys something)

These reward definitions are created on the dashboard, under the 'Reward Rules' section in the 'Referrals' tab on the dashboard.

Warning: For a referral program, you should not use unique awards for custom events and redeem pre-identify call. This can allow users to cheat the system.

### Get reward balance

Reward balances change randomly on the backend when certain actions are taken (defined by the rules), so you'll need to make an asynchronous call to retrieve the balance. Here is the syntax:

```csharp
Branch branch = Branch.GetInstance ();
branch.LoadRewards(this);

#region IBranchRewardsInterface implementation

		public void RewardsLoaded ()
		{
			// Do something with the data...
		}

		public void RewardsRedeemed ()
		{
			// Do something with the data...
		}

		public void CreditHistory (List<CreditHistoryEntry> history)
		{
			// Do something with the data...
		}

		public void RewardsRequestError (BranchError error)
		{
			// Do something with the data...
		}

#endregion
```

### Redeem all or some of the reward balance (store state)

We will store how many of the rewards have been deployed so that you don't have to track it on the end. In order to save that you gave the credits to the user, you can call redeem. Redemptions will reduce the balance of outstanding credits permanently.

```csharp
Branch branch = Branch.GetInstance ();
branch.RedeemRewards(this, amount, bucket);

#region IBranchRewardsInterface implementation

		public void RewardsLoaded ()
		{
			// Do something with the data...
		}

		public void RewardsRedeemed ()
		{
			// Do something with the data...
		}

		public void CreditHistory (List<CreditHistoryEntry> history)
		{
			// Do something with the data...
		}

		public void RewardsRequestError (BranchError error)
		{
		 // Do something with the data...
		}

		#endregion

```

### Get credit history

This call will retrieve the entire history of credits and redemptions from the individual user.  It also implements the IBranchRewardsInterface(see above). To use this call, implement like so:

```csharp
Branch branch = Branch.GetInstance ();
branch.GetCreditHistory(this);

```

The response will return an array that has been parsed from the following JSON:
```json
[
    {
        "transaction": {
                           "date": "2014-10-14T01:54:40.425Z",
                           "id": "50388077461373184",
                           "bucket": "default",
                           "type": 0,
                           "amount": 5
                       },
        "referrer": "12345678",
        "referree": null
    },
    {
        "transaction": {
                           "date": "2014-10-14T01:55:09.474Z",
                           "id": "50388199301710081",
                           "bucket": "default",
                           "type": 2,
                           "amount": -3
                       },
        "referrer": null,
        "referree": "12345678"
    }
]
```

**referrer**
: The id of the referring user for this credit transaction. Returns null if no referrer is involved. Note this id is the user id in developer's own system that's previously passed to Branch's identify user API call.

**referree**
: The id of the user who was referred for this credit transaction. Returns null if no referree is involved. Note this id is the user id in developer's own system that's previously passed to Branch's identify user API call.

**type**
: This is the type of credit transaction

1. _0_ - A reward that was added automatically by the user completing an action or referral
1. _1_ - A reward that was added manually
2. _2_ - A redemption of credits that occurred through our API or SDKs
3. _3_ - This is a very unique case where we will subtract credits automatically when we detect fraud

____

## New feature: BranchUniversalObject
### What is the Branch Universal Object?


Our previous method of creating links was a single call `GetShortUrl`, where you passed in all of the metadata and link properties in order to get a deep link back. We’re adding just one more step in between that we believe makes a lot more sense.

```
Dictionary<string, object> parameters = new Dictionary<string, object>();
parameters.Add("name", "test name");
parameters.Add("message", "hello there with short url");
parameters.Add("$og_title", "this is a title");
parameters.Add("$og_description", "this is a description");
parameters.Add("$og_image_url", "https://s3-us-west-1.amazonaws.com/branchhost/mosaic_og.png");

List<string> tags = new List<string>();
tags.Add("tag1");
tags.Add("tag2");

Branch.GetInstance().GetShortUrl (callback,
		                          Constants.URL_TYPE_UNLIMITED,
		                          parameters,
		                          "test_channel",
		                          "test_stage",
		                          tags,
		                          "test_feature");

```

#### Here’s the new mechanism using the Branch Universal Object:

```
BranchUniversalObject universalObject = new BranchUniversalObject();
universalObject.canonicalIdentifier = "id12345";
universalObject.title = "id12345 title";
universalObject.contentDescription = "My awesome piece of content!";
universalObject.imageUrl = "https://s3-us-west-1.amazonaws.com/branchhost/mosaic_og.png";
universalObject.metadata.Add("foo", "bar");

BranchLinkProperties linkProperties = new BranchLinkProperties();
linkProperties.tags.Add("tag1");
linkProperties.tags.Add("tag2");
linkProperties.feature = "sharing";
linkProperties.channel = "facebook";
linkProperties.controlParams.Add("$desktop_url", "http://example.com");

Branch.GetInstance().GetShortURL (callback,
		                          universalObject,
		                          linkProperties);

```
As you can see, it’s a bit more code but a lot more structured. What’s really cool about this is that once you’ve created the Universal Object, you can then do a bunch of neat things like:

###### 1. Initialize Branch

```
InitSession (IBranchBUOSessionInterface callback)
```

###### 2. Register a view on the content (for a new product coming soon)

```
RegisterView (BranchUniversalObject universalObject)
```

###### 3. Create a share sheet that lets the user share across all channels

```
ShareLink (IBranchLinkShareInterface callback,
		   BranchUniversalObject universalObject,
		   BranchLinkProperties linkProperties,
		   string message)
```

## Note: Migration from version 2.x.x to 3.x.x

Migrating to version 3.x.x from 2.x.x requires that the following method be used:

* GetShortUrl(IBranchUrlInterface callback, BranchUniversalObject universalObject, BranchLinkProperties linkProperties);

instead of methods:

* GetShortUrl(IBranchUrlInterface callback, Dictionary<String, dynamic> ...)
* GetShortUrl(IBranchUrlInterface callback, Dictionary<String, dynamic> ...)



## Note: Migration from version 1.x.x to 2.x.x

New version of Branch SDK based on our native libraries that we built for iOS and Android.
We changed Xamarin API in accordance with our native API.

To migrate to version 2.x.x:

1. delete old nuget package
2. install new Xamarin SDK nuget package
3. change initialisation of Branch
4. delete word "Async" in called Branch methods
5. change the code in accordance with changed and deleted list (see below)

##### Changed Interfaces
1. IBranchRewardsInterface
2. IBranchUrlInterface

##### Changed methods
1. We add two methods GetShortUrl instead of GetShortUrlAsync, you need to change list of parameters in the old GetShortUrlAsync and delete "Async"

##### Deleted Interfaces
1. IBranchProperties
2. IBranchActionsInterface
3. IBranchGetDeviceInformation
4. IBranchReferralInterface

##### Deleted methods
1. LoadReferralActionCountsAsync
2. GetReferralCodeAsync
3. ValidateReferralCodeAsync
4. ApplyReferralCodeAsync
5. GetReferralCountsForAction


## Troubleshooting: Ensure Newtonsoft built properly

There's a problem with the Newtonsoft JSON package that we're using to do JSON processing. (It get’s pulled in as a dependency of the NuGet package.) In a release build, it has a linking problem which leads to an exception we are seeing under certain circumstances. This can be fixed by a change to the options for the Android app. It is only an Android problem.

Basically, right-click on the project and select Options. Go to “Android Build” and select the “Linker” tab. Make sure the Release build configuration is selected. In the “Ignore assemblies” box, add “System.Core”. Rebuild the app. It should now run successfully.


