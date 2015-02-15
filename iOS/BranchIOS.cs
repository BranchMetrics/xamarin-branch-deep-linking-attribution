using System;

using CoreBluetooth;
using CoreTelephony;
using Foundation;
using UIKit;

using BranchXamarinSDK;

namespace BranchXamarinSDKTestbed.iOS
{
	public class BranchIOS : Branch, IBranchGetDeviceInformation, IBranchProperties
	{
		protected BranchIOS() {
		}

		public static void Init(String appKey, bool autoClose = false) {
			BranchIOS newBranch = new BranchIOS ();
			newBranch.AppKey = appKey;
			newBranch.DeviceInformation = newBranch;
			newBranch.Properties = newBranch;
			branch = newBranch;
			newBranch.InitUserAndSession ();
			if (autoClose) {
				newBranch.setupNotificationCallbacks ();
			}
			Settings settings = Settings.GetSettings ();
			settings.Timeout = TimeSpan.FromSeconds (newBranch.Properties.GetPropertyInt ("timeout", 10));
			settings.Retries = newBranch.Properties.GetPropertyInt ("retries", 3);
		}

		private void setupNotificationCallbacks() {
			UIApplication.Notifications.ObserveWillResignActive (WillResignActive);
			UIApplication.Notifications.ObserveDidBecomeActive (DidBecomeActive);
		}

		async public void DidBecomeActive(object sender, NSNotificationEventArgs e) {
			await InitSessionAsync(null);
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
			isReal = true;
			if (!isDebug) {
				return UIDevice.CurrentDevice.IdentifierForVendor.AsString ();
			} else {
				return Guid.NewGuid ().ToString ();
			}
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

		public int GetUpdateState() {
			String bundlePath = NSBundle.MainBundle.BundlePath;
			NSFileManager manager = NSFileManager.DefaultManager;
			NSError error;
			NSFileAttributes attrs = manager.GetAttributes (bundlePath, out error);
			return (attrs.CreationDate == attrs.ModificationDate)?0:1;
		}

		public string GetPhoneBrand() {
			return "Apple";
		}

		public string GetPhoneModel() {
			return "iPhone";
		}

		public string GetCarrier() {
			CTTelephonyNetworkInfo info = new CTTelephonyNetworkInfo ();
			return info.SubscriberCellularProvider.CarrierName;
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
			NSArray urlTypes = (NSArray)NSBundle.MainBundle.ObjectForInfoDictionary ("CFBundleURLTypes");
			if (urlTypes != null) {
				for (nuint i = 0; i < urlTypes.Count; i++) {
					NSDictionary urlType = urlTypes.GetItem<NSDictionary> (i);
					NSArray urlSchemes = (NSArray)urlType.ObjectForKey (new NSString("CFBundleURLScheme"));
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
				ret = (int)defaults.IntForKey ((NSString)key);
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

