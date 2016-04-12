using System;

namespace BranchXamarinSDK
{
	static public class Constants
	{
		public const String SDK_VERSION = "2.1.1";

		// Link Types for GetShortURL
		public const int URL_TYPE_UNLIMITED = 0;
		public const int URL_TYPE_SINGLE_USE = 1;

		// Features for GetShortURL
		public const String URL_FEATURE_SHARE = "share";
		public const String URL_FEATURE_REFERRAL = "referral";
		public const String URL_FEATURE_INVITE = "invite";
		public const String URL_FEATURE_DEAL = "deal";
		public const String URL_FEATURE_GIFT = "gift";
	}
}
