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

		public static void Init(String appKey) {
			BranchIOS newBranch = new BranchIOS ();
			newBranch.AppKey = appKey;
			newBranch.DeviceInformation = newBranch;
			newBranch.Properties = newBranch;
			branch = newBranch;
			newBranch.InitUserAndSession ();
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

		public String GetProperty (string key)
		{
			String ret = null;
			if (key != null) {
				NSUserDefaults defaults = NSUserDefaults.StandardUserDefaults;
				NSString value = (NSString)defaults.ValueForKey ((NSString)key);
				if (value != null) {
					ret = value.ToString ();
				}
			}
			return ret;
		}

		public void SetProperty ( string key, string value)
		{
			if ((key != null) && (value != null)) {
				NSUserDefaults defaults = NSUserDefaults.StandardUserDefaults;
				defaults.SetValueForKey((NSString)key, (NSString)value);
				defaults.Synchronize();
			}
		}

		#endregion
	}
}

