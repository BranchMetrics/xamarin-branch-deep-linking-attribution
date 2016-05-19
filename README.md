# Branch Metrics Xamarin SDK Reference

## IMPORTANT: Upgrading to V 2.1

On 3/27, we revamped this module to be a thin wrapper around our native iOS/Android SDKs. This fixed a ton of bugs and added additional functionality, but will require you to change the interfaces. Please see this section at the bottom for a [full migration guide](https://github.com/BranchMetrics/Xamarin-Deferred-Deep-Linking-SDK#note-mirgation-from-version-1xx-to-2xx).


If you don't have time to do so, just use a reference to version 1.2.1, which we're storing in [locked branch called 'locked-v.1.2.1'](https://github.com/BranchMetrics/Xamarin-Deferred-Deep-Linking-SDK/tree/locked-v.1.2.1).

## Get the Demo App

There's a full demo app embedded in this repository. It should serve as an example integration and help guide you in resolving any bugs you encounter. If you think you've got a bug, please first check that it's present in the demo app before writing in. You can find [the source here](https://github.com/BranchMetrics/Cordova-Ionic-PhoneGap-Deferred-Deep-Linking-SDK/blob/master/testbed).

## Additional Resources
- [Integration guide](https://dev.branch.io/recipes/add_the_sdk/cordova/) *Start Here*
- [Changelog](https://github.com/BranchMetrics/Cordova-Ionic-PhoneGap-Deferred-Deep-Linking-SDK/blob/master/ChangeLog.md)
- [Testing](https://dev.branch.io/recipes/testing_your_integration/cordova/)
- [Support portal, FAQ](http://support.branch.io)

## Installation

**The compiled iOS SDK footprint is 180kb**

**The compiled Android SDK footprint is 187kb**

___

### Nuget


The Branch Xamarin SDK is now available as a [NuGet package](https://www.nuget.org/packages/Branch-Xamarin-Linking-SDK).  You will need to add the package to your Android, iOS and Forms (if applicable) projects.  

1. Right click on each project and select `Add` -> `Add NuGet Package` or double click on the Packages folder to bring up the NuGet package dialog in Xamarin Studio.  
2. Find the _Branch Xamarin Linking SDK_ and select it.  This will add the required assemblies to your projects.  You need to do this for each project that will use Branch calls.  This includes the Android and iOS projects even if this is a Forms based app _since an initialization call needs to be added to each of the platform specific projects._

### Source

If you would rather build and reference the assemblies directly:

1. Clone this repository to your local machine  
2. Add the BranchXamarinSDK project to your solution and reference it from your Android, iOS and Forms (if applicable) project.  
3. Add the BranchXamarinSDK.Droid project to your solution and reference it from your Android project, if any.
4. Add the BranchXamarinSDK.iOS project and reference it from you iOS project, if any.

___

## Register your app

You can sign up for your own Branch Key at [https://dashboard.branch.io](https://dashboard.branch.io)

___

## Configure your app for deep linking

### Android: Configure your project

In your project's `manifest` file, you can register your app to respond to direct deep links (`yourapp://` in a mobile browser) by adding the second intent filter block. Also, make sure to change `yourapp` to a unique string that represents your app name.

Make sure that this activity is launched as a `singleTask`. This is important to handle proper deep linking from other apps like Facebook.

```
[Activity (Label = "Your app label", MainLauncher = true, Icon = "@mipmap/icon",
		LaunchMode = LaunchMode.SingleTask)]

[IntentFilter (new[]{"android.intent.action.VIEW"},
		Categories=new[]{"android.intent.category.DEFAULT", 
		"android.intent.category.BROWSABLE"},
		DataScheme="yourapp",
		DataHost="open")]
```


Make sure that your project has permissions:

- AccessNetworkState
- Internet

To understand how to work with android manifest, read Xamarin documentation:

- [Working with android manifest](https://developer.xamarin.com/guides/android/advanced_topics/working_with_androidmanifest.xml/)
- [Add permissions to android manifest](https://developer.xamarin.com/recipes/android/general/projects/add_permissions_to_android_manifest/)


### iOS: Configure your project

In your project's `YourProject-Info.plist` file:

1. In https://dashboard.branch.io/#/settings/link, tick `I have an iOS App` checkbox and enter your URI Scheme (e.g.: `yourapp://`) into the text box.

2. You can register your app to respond to direct deep links (`yourapp://` in a mobile browser) by adding `CFBundleURLTypes` block. Also, make sure to change `yourapp` to a unique string that represents your app name. 

![IOS Uri](https://github.com/BranchMetrics/Xamarin-Deferred-Deep-Linking-SDK/raw/master/docs/images/branch_ios_uri.png)


### iOS: Enable Universal Links

In iOS 9.2, Apple dropped support for URI scheme redirects. You must enable Universal Links if you want Branch-generated links to work in your iOS app. To do this:

1. enable `Associated Domains` capability on the Apple Developer portal when you create your app's bundle identifier. 
2. In https://dashboard.branch.io/#/settings/link, tick the `Enable Universal Links` checkbox and provide the Bundle Identifier and Apple Team ID in the appropriate boxes. 
3. Finally, create a new file named `Entitlements.plist` in the root directory of your project. Enable `associated-domains` and add `applinks:bnc.lt`. You may add more entitlement keys if you have any.

![Associated Domains](https://github.com/BranchMetrics/Xamarin-Deferred-Deep-Linking-SDK/raw/master/docs/images/branch_ios_domains.png)

___

## Initialize Branch on Xamarin

To Initialize Branch you need to use your own Branch key [https://dashboard.branch.io](https://dashboard.branch.io)

Before starting, it's important to understand that we require a generic Xamarin initialization in addition to the Android and iOS initialization. To make matters worse, it's different depending on whether you're using Xamarin Forms or not. Please click one of the following to be linked to the appropriate init path to follow:

1. [Click here](https://github.com/BranchMetrics/Branch-Xamarin-SDK#xamarin-forms-setup) if you're using **Xamarin Forms**
2. [Click here](https://github.com/BranchMetrics/Branch-Xamarin-SDK#non-forms-xamarin-setup) if you're **not using Xamarin Forms**

_____

### Xamarin Forms Setup

The SDK needs to be initialized at startup in each platform.  The code below shows how to do the platform specific initialization.  Note that this example shows a Xamarin Forms app.  The same Branch<platform>.Init calls need to be made whether Forms is used or not.


#### Android with Forms

For Android add the call to the onCreate of either your Application class or the first Activity you start. Note also the addition of OnNewIntent.  This is needed to get the latest link identifier when the app is opened from the background by following a deep link.

```csharp
public class MainActivity : global::Xamarin.Forms.Platform.Android.FormsApplicationActivity
{
	protected override void OnCreate (Bundle savedInstanceState)
	{
		base.OnCreate (savedInstanceState);

		global::Xamarin.Forms.Forms.Init (this, savedInstanceState);

		App app = new App ();

		// Enable debug mode.
		BranchAndroid.Debug = true;
		BranchAndroid.Init (this, "Your Branch key here", app);

		LoadApplication (app);
	}
	
	// Ensure we get the updated link identifier when the app is opened from the
	// background with a new link.
	protected override void OnNewIntent(Intent intent) {
		this.Intent = intent;
	}
}
```
Note that the first argument is the Branch key found in your app from the Branch dashboard. The second argument allows the Branch SDK to recognize if the application was launched from a content URI. The third argument allows to reconize if the application launched from Android App Links and from Push Notification.


#### iOS with Forms

For iOS add the code to your AppDelegate. This just creates the singleton object on Android with the appropriate Branch key but does not make any server requests.  Note also the addition of the `OpenUrl` method.  This is needed to get the latest link identifier when the app is opened from the background by following a deep link. Add method `ContinueUserActivity` to support Universal Links.

```csharp
[Register ("AppDelegate")]
public class AppDelegate : global::Xamarin.Forms.Platform.iOS.FormsApplicationDelegate
{
	private App app = null;

	public override bool FinishedLaunching (UIApplication uiApplication, NSDictionary launchOptions)
	{
		global::Xamarin.Forms.Forms.Init ();

		App app = new App ();

		// Enable debug mode. 
		BranchIOS.Debug = true;
		BranchIOS.Init ("Your Branch key here", launchOptions, app);

		LoadApplication (app);

		return base.FinishedLaunching (uiApplication, launchOptions);
	}

	// For direct deep linking
	public override bool OpenUrl(UIApplication application,
		NSUrl url,
		string sourceApplication,
		NSObject annotation)
	{
		return BranchIOS.getInstance ().OpenUrl (url);
	}

	// For Universal Links
	public override bool ContinueUserActivity (UIApplication application,
		NSUserActivity userActivity,
		UIApplicationRestorationHandler completionHandler)
	{
		return BranchIOS.getInstance ().ContinueUserActivity (userActivity);
	}
	
	// For Push Nitifications
	public override void ReceivedRemoteNotification (UIApplication application,
		NSDictionary userInfo)
	{
		BranchIOS.getInstance ().HandlePushNotification (userInfo);
	}
}
```

#### Callbacks with deep link data in Forms

The following code implements the callbacks for the Branch Session Interface. Think of these callbacks as your "deep link router". If your app opens with some data, you want to route the user depending on the data you passed in. Otherwise, send them to a generic install flow. This deep link routing callback is called 100% of the time on init, with your link params or an empty dictionary if none present.

```csharp
public class App : Application, IBranchSessionInterface
{

	#region IBranchSessionInterface implementation

	public void InitSessionComplete (Dictionary<string, object> data)
	{
		// Do something with the referring link data...
	}

	public void SessionRequestError (BranchError error)
	{
		// Handle the error case here
	}

	#endregion
}
```

____

### Non-Forms Xamarin Setup

The following code will make a request to the Branch servers to initialize a new session, and retrieve any referring link parameters if available. For example, If you created a custom link with your own custom dictionary data, you probably want to know when the user session init finishes, so you can check that data. Think of this callback as your "deep link router". If your app opens with some data, you want to route the user depending on the data you passed in. Otherwise, send them to a generic install flow.

This deep link routing callback is called 100% of the time on init, with your link params or an empty dictionary if none present.

#### iOS without Forms

The iOS device specific code can register notification listeners to handle the init and close of sessions when the app is sent to the background or resumed.  The BranchIOS.Init call takes an optional third parameter that will enable this automatic close session behavior if the parameter is set to true.  If your iOS app is not a Forms app, use the following device specific init.

```csharp
[Register ("AppDelegate")]
public class AppDelegate : UIApplicationDelegate, IBranchSessionInterface
{
	public override bool FinishedLaunching (UIApplication uiApplication, NSDictionary launchOptions)
	{
		// Enable debug mode. 
		BranchIOS.Debug = true;
		BranchIOS.Init ("Your Branch key here", launchOptions, this);

		// Do your remaining launch stuff here...
	}
	
	// For direct deep linking
	public override bool OpenUrl(UIApplication application,
		NSUrl url,
		string sourceApplication,
		NSObject annotation)
	{
		return BranchIOS.getInstance ().OpenUrl (url);
	}

	// For Universal Links
	public override bool ContinueUserActivity (UIApplication application,
		NSUserActivity userActivity,
		UIApplicationRestorationHandler completionHandler)
	{
		return BranchIOS.getInstance ().ContinueUserActivity (userActivity);
	}
	
	// For Push Notifications
	public override void ReceivedRemoteNotification (UIApplication application,
		NSDictionary userInfo)
	{
		BranchIOS.getInstance ().HandlePushNotification (userInfo);
	}

	#region IBranchSessionInterface implementation
	
	public void InitSessionComplete (Dictionary<string, object> data)
	{
		// Do something with the referring link data...
	}s

	public void SessionRequestError (BranchError error)
	{
		// Handle the error case here
	}

	#endregion
}
```

#### Android without Forms

For Android add the call to the onCreate of either your Application class or the first Activity you start. This just creates the singleton object on Android with the appropriate Branch key but does not make any server requests


```csharp
public class MainActivity : Activity, IBranchSessionInterface
{
	protected override void OnCreate (Bundle savedInstanceState)
	{
		base.OnCreate (savedInstanceState);

		// Enable debug mode.
		BranchAndroid.Debug = true;
		BranchAndroid.Init (this, "Your Branch key here", this);	}

	// Ensure we get the updated link identifier when the app is opened from the
	// background with a new link.
	protected override void OnNewIntent(Intent intent) {
		this.Intent = intent;
	}


	#region IBranchSessionInterface implementation

	public void InitSessionComplete (Dictionary<string, object> data)
	{
		// Do something with the referring link data...
	}

	public void SessionRequestError (BranchError error)
	{
		// Handle the error case here
	}

	#endregion
}
```

____

## Forms and non-Forms Functions

### Retrieve session (install or open) parameters

These session parameters will be available at any point later on with this command. If no params, the dictionary will be empty. This refreshes with every new session (app installs AND app opens)

```csharp
Branch branch = Branch.GetInstance ();
Dictionary<string, object> sessionParams = branch.GetLatestReferringParams();
```

### Retrieve install (install only) parameters

If you ever want to access the original session params (the parameters passed in for the first install event only), you can use this line. This is useful if you only want to reward users who newly installed the app from a referral link or something.

```csharp
Branch branch = Branch.GetInstance ();
Dictionary<string, object> installParams = branch.GetFirstReferringParams();
```

### Persistent identities

Often, you might have your own user IDs, or want referral and event data to persist across platforms or uninstall/reinstall. It's helpful if you know your users access your service from different devices. This where we introduce the concept of an 'identity'.

To identify a user, just call:

```csharp
Branch branch = Branch.GetInstance (); 
branch.SetIdentity("your user id", this);  // Where this implements IBranchIdentityInterface
```

#### Logout

If you provide a logout function in your app, be sure to clear the user when the logout completes. This will ensure that all the stored parameters get cleared and all events are properly attributed to the right identity.

**Warning** this call will clear the referral credits and attribution on the device.

```csharp
Branch branch = Branch.GetInstance ();
branch.Logout(this); // Where this implements IBranchIdentityInterface
```

### Register custom events

```csharp
Branch branch = Branch.GetInstance ();
branch.UserCompletedAction("your_custom_event");
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

var data = new Dictionary<string, object>(); 
data.Add("user", "Joe");
data.Add("profile_pic", "https://s3-us-west-1.amazonaws.com/myapp/joes_pic.jpg");
data.Add("description", "Joe likes long walks on the beach...") 

// associate a url with a set of tags, channel, feature, and stage for better analytics.
// tags: null or example set of tags could be "version1", "trial6", etc
// channel: null or examples: "facebook", "twitter", "text_message", etc
// feature: null or examples: Branch.FEATURE_TAG_SHARE, Branch.FEATURE_TAG_REFERRAL, "unlock", etc
// stage: null or examples: "past_customer", "logged_in", "level_6"

List<String> tags = new List<String>();
tags.Add("version1");
tags.Add("trial6");

// Link 'type' can be used for scenarios where you want the link to only deep link the first time. 
// Use _null_, _LINK_TYPE_UNLIMITED_USE_ or _LINK_TYPE_ONE_TIME_USE_

// Link 'alias' can be used to label the endpoint on the link. For example: http://bnc.lt/AUSTIN28. 
// Be careful about aliases: these are immutable objects permanently associated with the data and associated paramters you pass into the link. When you create one in the SDK, it's tied to that user identity as well (automatically specified by the Branch internals). If you want to retrieve the same link again, you'll need to call getShortUrl with all of the same parameters from before.

Branch branch = Branch.GetInstance ();
await branch.GetShortUrlAsync(this, data, "alias","channel","stage", tags, "feature", uriType);

// The error method of the callback will be called if the link generation fails (or if the alias specified is aleady taken.)
```

There are other methods which exclude tags and data if you don't want to pass those. Explore the autocomplete functionality.

**Note**
You can customize the Facebook OG tags of each URL if you want to dynamically share content by using the following _optional keys in the data dictionary_. Please use this [Facebook tool](https://developers.facebook.com/tools/debug/og/object) to debug your OG tags!

| Key | Value
| --- | ---
| "$og_title" | The title you'd like to appear for the link in social media
| "$og_description" | The description you'd like to appear for the link in social media
| "$og_image_url" | The URL for the image you'd like to appear for the link in social media
| "$og_video" | The URL for the video 
| "$og_url" | The URL you'd like to appear
| "$og_app_id" | Your OG app ID. Optional and rarely used.

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
| "$deeplink_path" | The value of the deep link path that you'd like us to append to your URI. For example, you could specify "$deeplink_path": "radio/station/456" and we'll open the app with the URI "yourapp://radio/station/456?link_click_id=branch-identifier". This is primarily for supporting legacy deep linking infrastructure. 
| "$always_deeplink" | true or false. (default is not to deep link first) This key can be specified to have our linking service force try to open the app, even if we're not sure the user has the app installed. If the app is not installed, we fall back to the respective app store or $platform_url key. By default, we only open the app if we've seen a user initiate a session in your app from a Branch link (has been cookied and deep linked by Branch)


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

Reward balances change randomly on the backend when certain actions are taken (defined by your rules), so you'll need to make an asynchronous call to retrieve the balance. Here is the syntax:

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

We will store how many of the rewards have been deployed so that you don't have to track it on your end. In order to save that you gave the credits to the user, you can call redeem. Redemptions will reduce the balance of outstanding credits permanently.

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


## Note: Migration from version 1.x.x to 2.x.x

New version of Branch SDK based on our native libraries that we built for iOS and Android.
We changed Xamarin API in accordance with our native API.

To migrate to version 2.x.x:

1. delete old nuget package
2. install new Xamarin SDK nuget package
3. change initialisation of Branch
4. delete word "Async" in called Branch methods
5. change your code in accordance with changed and deleted list (see below)

##### Changed Interfaces
1. IBranchRewardsInterface
2. IBranchUrlInterface

##### Changed methods
1. We add two methods GetShortUrl instead of GetShortUrlAsync, you need to change list of parameters in your old GetShortUrlAsync and delete "Async"

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

Basically, right click on the project and select Options. Go to “Android Build” and select the “Linker” tab. Make sure the Release build configuration is selected. In the “Ignore assemblies” box, add “System.Core”. Rebuild the app. It should now run successfully.


