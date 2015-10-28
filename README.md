# Branch-Xamarin-SDK

## [New documentation portal](https://dev.branch.io) and [support portal with user forums](http://support.branch.io)

## Introduction

The Xamarin SDK is a cross platform SDK you can use to access the Branch APIs from your Xamarin application.  The SDK is a PCL (Portable Class Library) that works with Xamarin Android, Xamarin iOS or Xamarin Forms applications.

## A Word About Async Methods

Most of the REST API calls in the SDK are submitted to a queue and executed in the background.  These requests, and their subsequent callbacks, occur on a background thread.  Due to the nature of how exceptions are handled by C# in background threads, exceptions that occur in a callback that are not caught, will be output to the console and consumed by the processing loop.

Be aware of this when executing UI functions in a callback.  Make sure that the UI functions are being executed inside a BeginInvokeOnMainThread call or it's platform equivalents.

## A Word About Building on Android

There's a problem with the Newtonsoft JSON package that we're using to do JSON processing. (It get’s pulled in as a dependency of the NuGet package.) In a release build, it has a linking problem which leads to an exception we are seeing under certain circumstances. This can be fixed by a change to the options for the Android app. It is only an Android problem.

Basically, right click on the project and select Options. Go to “Android Build” and select the “Linker” tab. Make sure the Release build configuration is selected. In the “Ignore assemblies” box, add “System.Core”. Rebuild the app. It should now run successfully.


## Integration Checklist

- Create Branch Account and get your [Branch Key]((https://dashboard.branch.io/#/settings)
- Install SDK
- Configure Manifest
- Set up routing for incoming deep links
- Initialize Branch
- Log user sessions 
- Set up sharing 
- Track events (optional)
- Set up referrals (optional)

## Additional Resources
- [Integration guide](https://dev.branch.io/recipes/quickstart_guide/xamarin/)
- Technical Reference (in this repo)
- Changelog (in this repo)
- [Testing](https://dev.branch.io/recipes/testing_your_integration/xamarin/)
- [Support portal, FAQ, and user forums](http://support.branch.io)
