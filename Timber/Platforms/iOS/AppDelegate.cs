using Foundation;
using BranchSDK;
using UIKit;

namespace Timber;

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

    public override bool OpenUrl(UIApplication application, NSUrl url, NSDictionary options)
    {
        //return base.OpenUrl(application, url, options);
        return BranchIOS.getInstance().OpenUrl(url);
    }

    public override bool ContinueUserActivity(UIApplication application, NSUserActivity userActivity, UIApplicationRestorationHandler completionHandler)
    {
        //return base.ContinueUserActivity(application, userActivity, completionHandler);
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

