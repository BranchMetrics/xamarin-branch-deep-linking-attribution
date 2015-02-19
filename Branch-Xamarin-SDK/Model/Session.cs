using System;

namespace BranchXamarinSDK
{
	public class Session
	{
		static public Session Current { get; set; }

		public String Id { get; set; }
		public String DeviceFingerprintId { get; set; }
		public String ClickedLink { get; set; }

		public Session (String id, String fingerprint, String clicked)
		{
			Id = id;
			DeviceFingerprintId = fingerprint;
			ClickedLink = clicked;
		}
	}
}

