using System;

namespace BranchXamarinSDK
{
	public interface IBranchProperties
	{
		String GetProperty(String key);
		void SetProperty(String key, String val);
	}
}

