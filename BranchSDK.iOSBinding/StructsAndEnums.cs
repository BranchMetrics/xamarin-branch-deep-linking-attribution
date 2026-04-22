using System.Runtime.InteropServices;
using Foundation;
using ObjCRuntime;

namespace IOSNativeBranch
{
	static class CFunctions
	{
		// extern NSArray<NSString *> * _Nonnull BNCCurrencyAllCurrencies ();
		[DllImport ("__Internal")]
		static extern NSString[] BNCCurrencyAllCurrencies ();

		// extern NSArray<NSString *> * _Nonnull BNCProductCategoryAllCategories ();
		[DllImport ("__Internal")]
		static extern NSString[] BNCProductCategoryAllCategories ();

		// extern NSURL * BNCURLForBranchDirectory ();
		[DllImport ("__Internal")]
		static extern NSUrl BNCURLForBranchDirectory ();
	}

	[Native]
	public enum BranchContentIndexMode : long
	{
		Public,
		Private
	}

	[Native]
	public enum BranchLinkType : ulong
	{
		UnlimitedUse = 0,
		OneTimeUse = 1
	}

	[Native]
	public enum BNCViewControllerPresentationOption : long
	{
		Show,
		Push,
		Present
	}

	[Native]
	public enum BranchLogLevel : ulong
	{
		Verbose,
		Debug,
		Warning,
		Error
	}

	[Native]
	public enum BranchEventAdType : long
	{
		None,
		Banner,
		Interstitial,
		RewardedVideo,
		Native
	}

	[Native]
	public enum BranchQRCodeImageFormat : long
	{
		Png,
		Jpeg
	}
}
