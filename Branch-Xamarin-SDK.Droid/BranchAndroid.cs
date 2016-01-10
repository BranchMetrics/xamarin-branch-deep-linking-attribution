using Android.Bluetooth;
using Android.Content;
using Android.Content.PM;
using Android.Net;
using Android.Telephony;
using Android.Util;
using Android.App;
using Android.OS;
using Org.Json;

using BranchXamarinSDK;

using System;
using System.Collections.Generic;

namespace BranchXamarinSDK
{
	public class BranchAndroid : Branch, IBranchGetDeviceInformation, IBranchProperties
	{
		Context AppContext;

		protected BranchAndroid() {
		}

		public static void Init(Context context, String branchKey, Android.Net.Uri uri = null, Android.OS.Bundle extras = null) {
			if (!branchKey.StartsWith("key_")) {
				Console.WriteLine ("Usage of App Key is deprecated, please move toward using a Branch key");
			}

			var newBranch = new BranchAndroid ();
			newBranch.BranchKey = branchKey;
			newBranch.DeviceInformation = newBranch;
			newBranch.Properties = newBranch;
			newBranch.AppContext = context.ApplicationContext;

			branch = newBranch;
			newBranch.InitUserAndSession ();
			newBranch.ReadAndStripParam (uri, extras);
		}

		public void SetLifeCycleHandlerCallback(Context context, IBranchSessionInterface callback = null) {
			BranchAndroidLifeCycleHandler lifeCycleHandler = new BranchAndroidLifeCycleHandler (callback);
			((Activity)context).Application.RegisterActivityLifecycleCallbacks (lifeCycleHandler);
			AutoSessionEnabled = true;
		}
			
		public void SetNewUrl(Android.Net.Uri uri, Android.OS.Bundle extras = null) {
			ReadAndStripParam (uri ,extras);
		}

		public static BranchAndroid getInstance() {
			return (BranchAndroid)branch;
		}

		private void ReadAndStripParam(Android.Net.Uri uri, Android.OS.Bundle extras) {

			// Capture the intent URI and extra for analytics in case started by external intents such as  google app search
			if (uri != null) {
				ExternalUri = uri.ToString ();
			}
			if (extras != null) {
				if (extras.KeySet ().Count > 0) {
					JSONObject extrasJson = new JSONObject();
					foreach (string key in extras.KeySet ()) {
						extrasJson.Put (key, extras.Get(key));
					}
					ExternalExtra = extrasJson.ToString ();
				}
			}

			//Check for any push identifier in case app is launched by a push notification
			if (extras != null) {
				string pushIdentifier = extras.GetString("branch");
				if (!string.IsNullOrEmpty(pushIdentifier)) {
					PushIdentifier = pushIdentifier;
					return;
				}
			}

			//Check for link click id or app link
			if (uri != null && uri.IsHierarchical) {

				try {
					LinkClickIdentifier = uri.GetQueryParameter ("link_click_id");
				}
				catch {
					LinkClickIdentifier = "";
				}

				if (string.IsNullOrEmpty(LinkClickIdentifier)) {
					// Check if the clicked url is an app link pointing to this app
					string scheme = uri.Scheme;

					if (!string.IsNullOrEmpty(scheme)) {
						scheme = scheme.ToLower ();
						if ((scheme.Equals("http") || scheme.Equals("https")) && !string.IsNullOrEmpty(uri.Host)) {
							AndroidAppLink = uri.ToString();
						}
					}
				}
			}
		}

		#region IBranchGetDeviceInformation implementation

		public string GetDeviceId (bool isDebug, out bool isReal)
		{
			isReal = true;
			string id = null;
			if (!isDebug) {
				id = Android.Provider.Settings.Secure.GetString (AppContext.ContentResolver, Android.Provider.Settings.Secure.AndroidId);
			}
			if (id == null) {
				isReal = false;
				return Java.Util.UUID.RandomUUID().ToString();
			}
			return id;
		}

		public string GetOS ()
		{
			return "Android";
		}

		public String GetOSVersion ()
		{
			return Android.OS.Build.VERSION.Sdk;
		}

		public string GetAppVersion ()
		{
			String ret = "";
			if (Android.OS.Build.VERSION.SdkInt >= Android.OS.BuildVersionCodes.Gingerbread) {
				PackageInfo info = AppContext.PackageManager.GetPackageInfo (AppContext.PackageName, 0);
				ret = info.VersionName;
			}
			return ret;
		}

		public int GetUpdateState(bool saveState = false) {
			String currentVersion = GetAppVersion ();
			String storedVersion = GetPropertyString("bnc_app_version");

			int ret = 1;

			if (String.IsNullOrWhiteSpace (storedVersion)) {

				if (saveState) {
					SetPropertyString ("bnc_app_version", currentVersion);
				}
				if (Android.OS.Build.VERSION.SdkInt >= Android.OS.BuildVersionCodes.Gingerbread) {
					PackageInfo info = AppContext.PackageManager.GetPackageInfo (AppContext.PackageName, 0);
					if (info.LastUpdateTime != info.FirstInstallTime) {
						ret = 2;
					} else {
						ret = 0;
					}
				} else {
					ret = 0;
				}
			} else if (!currentVersion.Equals (storedVersion)) {
				if (saveState) {
					SetPropertyString ("bnc_app_version", currentVersion);
				}
				ret = 2;
			} else {
				ret = 1;
			}

			return ret;
		}

		public string GetPhoneBrand() {
			return Android.OS.Build.Manufacturer;
		}

		public string GetPhoneModel() {
			return Android.OS.Build.Model;
		}

		public string GetCarrier() {
			if (GetTelephonePresent()) {
				var tm = (TelephonyManager)AppContext.GetSystemService (Context.TelephonyService);
				if (tm != null) {
					return tm.NetworkOperatorName;
				}
			}

			return "";
		}

		public bool GetTelephonePresent() {
			return AppContext.PackageManager.HasSystemFeature(PackageManager.FeatureTelephony);
		}

		public bool GetNfcPresent() {
			return AppContext.PackageManager.HasSystemFeature(PackageManager.FeatureNfc);
		}

		public String GetBluetoothVersion() {
			if (Android.OS.Build.VERSION.SdkInt >= Android.OS.BuildVersionCodes.Gingerbread) {
				if ((Android.OS.Build.VERSION.SdkInt >= Android.OS.BuildVersionCodes.JellyBeanMr2) &&
					AppContext.PackageManager.HasSystemFeature (PackageManager.FeatureBluetoothLe)) {
					return "ble";
				} else if (AppContext.PackageManager.HasSystemFeature(PackageManager.FeatureBluetooth)) {
					return "classic";
				}
			}

			return "";
		}

		public bool GetBluetoothPresent() {
			bool ret = false;
			BluetoothAdapter adapter = BluetoothAdapter.DefaultAdapter;
			try {
				ret |= ((adapter != null) && adapter.IsEnabled);
			} catch (Java.Lang.SecurityException) {
				System.Diagnostics.Debug.WriteLine ("Need BT permissions to get Bluetooth present");
			}

			return ret;
		}

		public bool GetWifiConnected() {
			if (AppContext.CheckCallingOrSelfPermission(Android.Manifest.Permission.AccessNetworkState) ==
				Permission.Granted) {
				var cm = (ConnectivityManager)AppContext.GetSystemService(Context.ConnectivityService);
				return cm.GetNetworkInfo(ConnectivityType.Wifi).IsConnected;
			}

			return false;
		}

		public int GetDpi(out int width, out int height) {
			DisplayMetrics dm = AppContext.Resources.DisplayMetrics;
			width = dm.WidthPixels;
			height = dm.HeightPixels;
			return Convert.ToInt32 (dm.DensityDpi);
		}

		public string GetURIScheme() {
			return "";
		}

		public string GetAdTrackingEnabled() {
			// Not valid on Android right now?
			return null;
		}

		public void WriteLog(String message, String tag = null, int level = 3) {
			String localTag = "";
			if (tag != null) {
				localTag = tag;
			}
			switch (level) {
			case 2:
				Android.Util.Log.Verbose (localTag, message);
				break;
			case 3:
				Android.Util.Log.Debug (localTag, message);
				break;
			case 4:
				Android.Util.Log.Info (localTag, message);
				break;
			case 5:
				Android.Util.Log.Warn (localTag, message);
				break;
			case 6:
				Android.Util.Log.Error (localTag, message);
				break;
			default:
				Android.Util.Log.Debug (localTag, message);
				break;
			}
		}

		#endregion

		#region IBranchProperties implementation

		public String GetPropertyString (string key)
		{
			ISharedPreferences prefs = AppContext.GetSharedPreferences ("branchsharedprefs", FileCreationMode.Private);
			return prefs.GetString (key, "");
		}

		public void SetPropertyString (string key, string value)
		{
			if (!String.IsNullOrWhiteSpace (key)) {
				ISharedPreferences prefs = AppContext.GetSharedPreferences ("branchsharedprefs", FileCreationMode.Private);
				ISharedPreferencesEditor editor = prefs.Edit ();
				if (value != null) {
					editor.PutString (key, value);
				} else {
					editor.Remove (key);
				}
				editor.Commit();
			}
		}

		public int GetPropertyInt(string key, int defaultValue) {
			int ret = defaultValue;
			if (!String.IsNullOrWhiteSpace (key)) {
				ISharedPreferences prefs = AppContext.GetSharedPreferences ("branchsharedprefs", FileCreationMode.Private);
				if (prefs.Contains(key)) {
					ret = prefs.GetInt(key, defaultValue);
				}
			}
			return ret;
		}

		public void SetPropertyInt(string key, int value) {
			ISharedPreferences prefs = AppContext.GetSharedPreferences ("branchsharedprefs", FileCreationMode.Private);
			ISharedPreferencesEditor editor = prefs.Edit ();
			if (!String.IsNullOrWhiteSpace (key)) {
				editor.PutInt (key, value);
				editor.Commit ();
			}
		}

		#endregion
	}
}

