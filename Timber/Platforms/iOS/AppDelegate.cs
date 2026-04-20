using Foundation;
using BranchSDK;
using UIKit;
using Firebase.Core;
using Firebase.Analytics;

namespace Timber;

/*
 * Implement IBranchSessionInterface to get Branch payloads.
 */
[Register("AppDelegate")]
public class AppDelegate : MauiUIApplicationDelegate, IBranchSessionInterface
{
	protected override MauiApp CreateMauiApp() => MauiProgram.CreateMauiApp();

    public override bool FinishedLaunching(UIApplication application, NSDictionary launchOptions)
    {
        
        Branch.EnableLogging = true;

        // BranchIOS.SetSDKWaitTimeForThirdPartyAPIs(0.000000000000000001);
        BranchIOS.SetAnonID("EighthAnonIDTest");
        BranchIOS.SetODMInfo("EighthODMInfoTest", (double)DateTimeOffset.UtcNow.ToUnixTimeMilliseconds());

        BranchIOS.Init("key_live_nf8w3l1WBpzWdlC00KsLNdmbuEccK6Yr", launchOptions, this);

        //Branch.SetTrackingDisabled(true);
        
        Firebase.Core.App.Configure();
        string firebaseAppInstanceId = Analytics.AppInstanceId;
        if (string.IsNullOrEmpty(firebaseAppInstanceId)) {
            firebaseAppInstanceId = "pending_firebase_id"; 
        }
        
        var keepFirebase = typeof(Firebase.Analytics.Analytics);
        var keepBranch = typeof(BranchSDK.BranchIOS);

        return base.FinishedLaunching(application, launchOptions);
    }

    // Handle URI opens
    public override bool OpenUrl(UIApplication application, NSUrl url, NSDictionary options)
    {
        return BranchIOS.getInstance().OpenUrl(url);
    }

    // Handle Universal Links
    public override bool ContinueUserActivity(UIApplication application, NSUserActivity userActivity, UIApplicationRestorationHandler completionHandler)
    {
        return BranchIOS.getInstance().ContinueUserActivity(userActivity);
    }

    public void InitSessionComplete(Dictionary<string, object> data)
    {
        LogMessage("InitSessionComplete: ");
        foreach (var key in data.Keys)
        {
            LogMessage(key + " : " + data[key].ToString());
        }
    }

    public void SessionRequestError(BranchError error)
    {
        LogMessage("SessionRequestError: ");
        LogMessage("Error Message: " + error.ErrorMessage);
        LogMessage("Error Code: " + error.ErrorCode);
    }

    void LogMessage(string message)
    {
        Console.WriteLine(message);
    }
}

