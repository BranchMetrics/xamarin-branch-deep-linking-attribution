using System;
using System.Net;
using BranchXamarinSDK;
using CoreTelephony;
using Foundation;
using AdSupport;

using UIKit;

namespace BranchXamarinSDK
{
	public class BranchIOS : Branch, IBranchGetDeviceInformation, IBranchProperties
	{
		protected BranchIOS() {
		}

		public static void Init(String branchKey, NSUrl url, bool autoClose = false) {
            if (!branchKey.StartsWith("key_")) {
                Console.WriteLine ("Usage of App Key is deprecated, please move toward using a Branch key");
            }

            var newBranch = new BranchIOS ();
            newBranch.BranchKey = branchKey;
			newBranch.DeviceInformation = newBranch;
			newBranch.Properties = newBranch;
			branch = newBranch;
			newBranch.InitUserAndSession ();

			if (autoClose) {
				newBranch.AutoInitEnabled = true;
				newBranch.setupNotificationCallbacks ();
			}

			newBranch.processUrl (url);
		}

		/// <summary>
		/// Sets the new URL recently used to open/foreground the app.
		/// </summary>
		/// <param name="url">URL.</param>
		public void SetNewUrl(NSUrl url) {
			processUrl (url);
		}

		void processUrl(NSUrl url) {
			if (url != null) {
				foreach (string query in url.Query.Split (new [] { '&' })) {
					if (query.StartsWith ("link_click_id")) {
						if (query.Length > 14) {
							LinkClickIdentifier = WebUtility.UrlDecode(query.Substring(14).Trim());
							Console.WriteLine ("LCI: " + LinkClickIdentifier);
						}
					}
				}
			}
		}

		void setupNotificationCallbacks() {
			UIApplication.Notifications.ObserveWillResignActive (WillResignActive);
			UIApplication.Notifications.ObserveDidBecomeActive (DidBecomeActive);
		}

		async public void DidBecomeActive(object sender, NSNotificationEventArgs e) {
			Console.WriteLine ("DidBecomeActive Automatic Init");
			await InitSessionAsync(InitCallback);
		}

		async public void WillResignActive(object sender, NSNotificationEventArgs e) {
			await CloseSessionAsync ();
		}

		public static BranchIOS getInstance() {
			return (BranchIOS)branch;
		}

		#region IBranchGetDeviceInformation implementation

		public string GetDeviceId (bool isDebug, out bool isReal)
		{
			string ret;
			isReal = true;

			if (isDebug) {
				isReal = false;
				ret = Guid.NewGuid ().ToString ();
			} else {
				ret = ASIdentifierManager.SharedManager.AdvertisingIdentifier.AsString ();
				if (ret == null) {
					ret = UIDevice.CurrentDevice.IdentifierForVendor.AsString ();
				}
			}
			return ret;
		}

		public string GetOS ()
		{
			return "iOS";
		}

		public string GetOSVersion ()
		{
			return UIDevice.CurrentDevice.SystemVersion;
		}

		public string GetAppVersion ()
		{
			return NSBundle.MainBundle.ObjectForInfoDictionary ("CFBundleVersion").ToString ();
		}

		public int GetUpdateState(bool saveState = false) {
			NSUserDefaults defs = NSUserDefaults.StandardUserDefaults;
			String stored = defs.StringForKey ("bnc_app_version");
			String current = GetAppVersion ();

			if (stored != null) {
				if (current.Equals (stored)) {
					return 1;
				} else {
					if (saveState) {
						defs.SetString (current, "bnc_app_version");
					}
					return 2;
				}
			}

			if (saveState) {
				defs.SetString (current, "bnc_app_version");
			}

			NSFileManager fileManager = NSFileManager.DefaultManager;
			NSError error;

			// creation
			var urlArray = fileManager.GetUrls(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomain.User);
			NSUrl docPath = urlArray [urlArray.Length - 1];
			NSFileAttributes createAttrs = fileManager.GetAttributes (docPath.Path, out error);
			int createDays = (int)(createAttrs.CreationDate.SecondsSinceReferenceDate / (60 * 60 * 24));

			// modification
			String bundlePath = NSBundle.MainBundle.BundlePath;
			NSFileAttributes modAttrs = fileManager.GetAttributes (bundlePath, out error);
			int modDays = (int)(modAttrs.ModificationDate.SecondsSinceReferenceDate / (60 * 60 * 24));

			return (modDays == createDays)?0:2;
		}

		public string GetPhoneBrand() {
			return "Apple";
		}

		public string GetPhoneModel() {
			return "iPhone";
		}

		public string GetCarrier() {
			var info = new CTTelephonyNetworkInfo ();
			if ((info.SubscriberCellularProvider != null) && (info.SubscriberCellularProvider.CarrierName != null)) {
				return info.SubscriberCellularProvider.CarrierName;
			}

			return null;
		}

		public bool GetNfcPresent() {
			return false;
		}

		public bool GetBluetoothPresent() {
			return true;
		}

		public bool GetTelephonePresent() {
			return true;
		}

		public string GetBluetoothVersion() {
			return "unknown";
		}

		public bool GetWifiConnected() {
			return false;
		}

		public int GetDpi(out int width, out int height) {
			UIScreen screen = UIScreen.MainScreen;
			width = (int)(screen.Bounds.Width * screen.Scale);
			height = (int)(screen.Bounds.Height * screen.Scale);
			return (int)screen.Scale;
		}

		public String GetURIScheme() {
			String scheme = "";
			var urlTypes = (NSArray)NSBundle.MainBundle.ObjectForInfoDictionary ("CFBundleURLTypes");
			if (urlTypes != null) {
				for (nuint i = 0; i < urlTypes.Count; i++) {
					NSDictionary urlType = urlTypes.GetItem<NSDictionary> (i);
					var urlSchemes = (NSArray)urlType.ObjectForKey (new NSString("CFBundleURLScheme"));
					if (urlSchemes != null) {
						for (nuint j = 0; j < urlSchemes.Count; j++) {
							NSString urlScheme = urlSchemes.GetItem<NSString> (i);
							if (urlScheme.ToString().StartsWith("fb") || urlScheme.ToString().StartsWith ("db") || urlScheme.ToString().StartsWith ("pin")) {
								continue;
							} else {
								scheme = urlScheme;
								break;
							}
						}
					}
					if (!String.IsNullOrWhiteSpace (scheme)) {
						break;
					}
				}
			}

			return scheme;
		}

		public String GetAdTrackingEnabled() {
			return ASIdentifierManager.SharedManager.IsAdvertisingTrackingEnabled ? "true" : "false";
		}

		public void WriteLog(String message, String tag = null, int level = 3) {
			Console.WriteLine (message);
		}

		#endregion

		#region IBranchProperties implementation

		public String GetPropertyString (string key)
		{
			String ret = null;
			if (!String.IsNullOrWhiteSpace(key)) {
				NSUserDefaults defaults = NSUserDefaults.StandardUserDefaults;
				ret = defaults.StringForKey (key);
			}
			return ret;
		}

		public void SetPropertyString ( string key, string value)
		{
			NSUserDefaults defaults = NSUserDefaults.StandardUserDefaults;
			if (!String.IsNullOrWhiteSpace(key) && (value != null)) {
				defaults.SetString (value, key);
			} else if (!String.IsNullOrWhiteSpace(key)) {
				defaults.SetString (value, key);
			} 
			defaults.Synchronize ();
		}

		public int GetPropertyInt ( string key, int defaultValue)
		{
			int ret = defaultValue;
			if (!String.IsNullOrWhiteSpace(key)) {
				NSUserDefaults defaults = NSUserDefaults.StandardUserDefaults;
				ret = (int)defaults.IntForKey (key);
				if (ret == 0) {
					ret = defaultValue;
				}
			} 
			return ret;
		}

		public void SetPropertyInt( string key, int value) {
			if (!String.IsNullOrWhiteSpace (key)) {
				NSUserDefaults defaults = NSUserDefaults.StandardUserDefaults;
				defaults.SetInt ((nint)value, key);
				defaults.Synchronize ();
			}
		}

		#endregion
	}
}

