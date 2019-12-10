using System;
using System.Runtime.InteropServices;
//using Branch;
using Foundation;
using ObjCRuntime;

namespace IOSNativeBranch {

    [Native]
	public enum BNCErrorCode : long
    {
    	InitError = 1000,
    	DuplicateResourceError = 1001,
    	RedeemCreditsError = 1002,
    	BadRequestError = 1003,
    	ServerProblemError = 1004,
    	NilLogError = 1005,
    	VersionError = 1006,
    	NetworkServiceInterfaceError = 1007,
    	InvalidNetworkPublicKeyError = 1008,
    	ContentIdentifierError = 1009,
    	SpotlightNotAvailableError = 1010,
    	SpotlightTitleError = 1011,
    	RedeemZeroCreditsError = 1012,
    	SpotlightIdentifierError = 1013,
    	SpotlightPublicIndexError = 1014,
    	TrackingDisabledError = 1015,
    	HighestError
    }

    [Native]
    public enum BranchLinkType : ulong
    {
    	UnlimitedUse = 0,
    	OneTimeUse = 1
    }

    [Native]
    public enum BNCLogLevel : long
    {
    	All = 0,
    	DebugSDK = All,
    	BreakPoint,
    	Debug,
    	Warning,
    	Error,
    	Assert,
    	Log,
    	None,
    	Max
    }

    [Native]
    public enum BNCViewControllerPresentationOption : long
    {
    	Show,
    	Push,
    	Present
    }

    [Native]
    public enum BranchContentIndexMode : long
    {
    	ublic,
    	rivate
    }

    [Native]
    public enum BranchCreditHistoryOrder : ulong
    {
    	MostRecentFirst,
    	LeastRecentFirst
    }
}