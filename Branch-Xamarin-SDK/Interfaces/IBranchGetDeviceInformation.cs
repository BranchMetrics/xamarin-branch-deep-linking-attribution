using System;

namespace BranchXamarinSDK
{
	public interface IBranchGetDeviceInformation
	{
		String GetDeviceId(bool isDebug, out bool isReal);
		String GetOS();
		String GetOSVersion();
		String GetAppVersion();
		int GetUpdateState();
		String GetPhoneBrand();
		String GetPhoneModel();
		bool GetNfcPresent();
		bool GetTelephonePresent();
		bool GetBluetoothPresent();
		String GetBluetoothVersion();
		String GetCarrier();
		bool GetWifiConnected();
		int GetDpi(out int width, out int height);
		String GetURIScheme();
		void WriteLog(String message, String tag = null, int level = 3);
	}
}

