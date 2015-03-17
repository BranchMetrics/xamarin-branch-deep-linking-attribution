using System;

namespace BranchXamarinSDK
{
	static public class Constants
	{
		public const String SDK_VERSION = "1.0.1";
		public static Uri BASE_URI = new Uri("https://api.branch.io/");

		// Link Types for GetShortURL
		public const int URL_TYPE_UNLIMITED = 0;
		public const int URL_TYPE_SINGLE_USE = 1;

		// Features for GetShortURL
		public const String URL_FEATURE_SHARE = "share";
		public const String URL_FEATURE_REFERRAL = "referral";
		public const String URL_FEATURE_INVITE = "invite";
		public const String URL_FEATURE_DEAL = "deal";
		public const String URL_FEATURE_GIFT = "gift";

		// Calculation Types for Get Referral Code
		public const int REFERRAL_CODE_AWARD_UNLIMITED = 1;
		public const int REFERRAL_CODE_AWARD_UNIQUE = 0;

		// Location for Get Referral Code
		public const int REFERRAL_CODE_LOCATION_REFERREE = 0;
		public const int REFERRAL_CODE_LOCATION_REFERRING_USER = 2;
		public const int REFERRAL_CODE_LOCATION_BOTH = 3;

		// Internal keys for data saved in properties
		internal const String TIMEOUT_KEY = "timeout";
		internal const String RETRY_KEY = "retry";
	}
}

