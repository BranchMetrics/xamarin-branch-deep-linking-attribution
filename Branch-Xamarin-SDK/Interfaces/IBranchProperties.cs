using System;

namespace BranchXamarinSDK
{
	public interface IBranchProperties
	{
		String GetPropertyString(String key);
		void SetPropertyString(String key, String val);
		int GetPropertyInt(String key, int defaultValue);
		void SetPropertyInt(String key, int val);
	}
}

