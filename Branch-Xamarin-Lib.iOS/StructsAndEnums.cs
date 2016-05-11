using System;
using ObjCRuntime;

namespace IOSNativeBranch
{
	[Native]
	public enum ContentIndexMode : ulong
	{
		ContentIndexModePublic = 0,
		ContentIndexModePrivate = 1
	}

	[Native]
	public enum BranchLinkType : ulong
	{
		UnlimitedUse = 0,
		OneTimeUse = 1
	}

	[Native]
	public enum BranchCreditHistoryOrder : ulong
	{
		MostRecentFirst,
		LeastRecentFirst
	}

	[Native]
	public enum BranchPromoCodeRewardLocation : ulong
	{
		ReferredUser = 0,
		ReferringUser = 2,
		BothUsers = 3
	}

	[Native]
	public enum BranchPromoCodeUsageType : ulong
	{
		OncePerUser = 1,
		UnlimitedUses = 0
	}
}