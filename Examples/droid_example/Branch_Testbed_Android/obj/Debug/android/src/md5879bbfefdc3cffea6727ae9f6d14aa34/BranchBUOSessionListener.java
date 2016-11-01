package md5879bbfefdc3cffea6727ae9f6d14aa34;


public class BranchBUOSessionListener
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		io.branch.referral.Branch.BranchUniversalReferralInitListener
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onInitFinished:(Lio/branch/indexing/BranchUniversalObject;Lio/branch/referral/util/LinkProperties;Lio/branch/referral/BranchError;)V:GetOnInitFinished_Lio_branch_indexing_BranchUniversalObject_Lio_branch_referral_util_LinkProperties_Lio_branch_referral_BranchError_Handler:IO.Branch.Referral.AndroidNativeBranch/IBranchUniversalReferralInitListenerInvoker, Branch-Xamarin-Lib.Droid\n" +
			"";
		mono.android.Runtime.register ("BranchXamarinSDK.Droid.BranchBUOSessionListener, Branch-Xamarin-SDK.Droid, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null", BranchBUOSessionListener.class, __md_methods);
	}


	public BranchBUOSessionListener () throws java.lang.Throwable
	{
		super ();
		if (getClass () == BranchBUOSessionListener.class)
			mono.android.TypeManager.Activate ("BranchXamarinSDK.Droid.BranchBUOSessionListener, Branch-Xamarin-SDK.Droid, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null", "", this, new java.lang.Object[] {  });
	}


	public void onInitFinished (io.branch.indexing.BranchUniversalObject p0, io.branch.referral.util.LinkProperties p1, io.branch.referral.BranchError p2)
	{
		n_onInitFinished (p0, p1, p2);
	}

	private native void n_onInitFinished (io.branch.indexing.BranchUniversalObject p0, io.branch.referral.util.LinkProperties p1, io.branch.referral.BranchError p2);

	private java.util.ArrayList refList;
	public void monodroidAddReference (java.lang.Object obj)
	{
		if (refList == null)
			refList = new java.util.ArrayList ();
		refList.add (obj);
	}

	public void monodroidClearReferences ()
	{
		if (refList != null)
			refList.clear ();
	}
}
