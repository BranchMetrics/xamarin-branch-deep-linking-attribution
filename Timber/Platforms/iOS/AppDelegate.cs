using Foundation;
using BranchSDK;
using UIKit;

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
        BranchIOS.Init("key_live_nf8w3l1WBpzWdlC00KsLNdmbuEccK6Yr", launchOptions, this);

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

