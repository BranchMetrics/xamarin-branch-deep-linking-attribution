using System;

namespace BranchXamarinSDK
{
	public class Settings
	{
		public TimeSpan Timeout { get; set; }
		public int Retries { get; set; }

		public static Settings settings;

		public static Settings GetSettings() {
			if (settings == null) {
				settings = new Settings ();
			}

			return settings;
		}

		protected Settings ()
		{
			Timeout = TimeSpan.FromSeconds(3);
			Retries = 3;
		}
	}
}

