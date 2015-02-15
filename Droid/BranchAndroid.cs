using Android.Bluetooth;
using Android.Content;
using Android.Content.PM;
using Android.Net;
using Android.Telephony;
using Android.Util;
using Android.Views;

using BranchXamarinSDK;

using Java.IO;
using Java.Util.Jar;

using System;

namespace BranchXamarinSDKTestbed.Droid
{
	public class BranchAndroid : Branch, IBranchGetDeviceInformation, IBranchProperties
	{
		private Context AppContext;

		protected BranchAndroid() {
		}

		public static void Init(Context context, String appKey) {
			BranchAndroid newBranch = new BranchAndroid ();
			newBranch.AppKey = appKey;
			newBranch.DeviceInformation = newBranch;
			newBranch.Properties = newBranch;
			newBranch.AppContext = context.ApplicationContext;
			branch = newBranch;
			newBranch.InitUserAndSession ();
			Settings settings = Settings.GetSettings ();
			settings.Timeout = TimeSpan.FromSeconds (newBranch.GetPropertyInt ("timeout", 3));
			settings.Retries = newBranch.GetPropertyInt ("retries", 3);
		}

		public static BranchAndroid getInstance() {
			return (BranchAndroid)branch;
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

		public int GetUpdateState() {
			int ret = 0;
			if (Android.OS.Build.VERSION.SdkInt >= Android.OS.BuildVersionCodes.Gingerbread) {
				PackageInfo info = AppContext.PackageManager.GetPackageInfo (AppContext.PackageName, 0);
				if (info.LastUpdateTime != info.FirstInstallTime) {
					ret = 1;
				}
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
				TelephonyManager tm =
					(TelephonyManager)AppContext.GetSystemService (Context.TelephonyService);
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
				if ((adapter != null) && adapter.IsEnabled) {
					ret = true;
				}
			} catch (Java.Lang.SecurityException ex) {
				Log.Debug ("BranchAndroid", "Checking bluetooth present exception: " + ex.Message);
				System.Diagnostics.Debug.WriteLine ("Need BT permissions to get Bluetooth present");
			}

			return ret;
		}

		public bool GetWifiConnected() {
			if (AppContext.CheckCallingOrSelfPermission(Android.Manifest.Permission.AccessNetworkState) ==
				Permission.Granted) {
				ConnectivityManager cm = 
					(ConnectivityManager)AppContext.GetSystemService(Context.ConnectivityService);
				return cm.GetNetworkInfo(ConnectivityType.Wifi).IsConnected;
			}

			return false;
		}

		public int GetDpi(out int width, out int height) {
			DisplayMetrics dm = AppContext.Resources.DisplayMetrics;
			width = dm.WidthPixels;
			height = dm.HeightPixels;
			return System.Convert.ToInt32 (dm.DensityDpi);
		}

		public string GetURIScheme() {
			return "";
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

