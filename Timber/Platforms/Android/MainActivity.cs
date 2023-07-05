using Android.App;
using Android.Content.PM;
using Android.OS;
using BranchSDK;
using Android.Content;

namespace Timber;

[IntentFilter(new[] { "android.intent.action.VIEW" },
Categories = new[] { "android.intent.category.DEFAULT", "android.intent.category.BROWSABLE" },
DataScheme = "timber",
DataHost = "open")]

[IntentFilter(new[] { "android.intent.action.VIEW" },
Categories = new[] { "android.intent.category.DEFAULT", "android.intent.category.BROWSABLE" },
DataScheme = "https",
DataHost = "timber.app.link")]

/*
 * Update the Activity
 * 
 * Add a "Name" so this Activity can be located by name.
 * Set the LaunchMode, singleTop or singleTask is recommended.
 * 
 * Implement IBranchSessionInterface to get Branch Payloads
 * 
 */
[Activity(Name = "io.branch.timber.MainActivity", Theme = "@style/Maui.SplashTheme", MainLauncher = true, LaunchMode = LaunchMode.SingleTop, ConfigurationChanges = ConfigChanges.ScreenSize | ConfigChanges.Orientation | ConfigChanges.UiMode | ConfigChanges.ScreenLayout | ConfigChanges.SmallestScreenSize | ConfigChanges.Density)]
public class MainActivity : MauiAppCompatActivity, IBranchSessionInterface
{
    protected override void OnCreate(Bundle savedInstanceState)
    {
        base.OnCreate(savedInstanceState);
        BranchAndroid.Init(this, "key_live_nf8w3l1WBpzWdlC00KsLNdmbuEccK6Yr", this);
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

