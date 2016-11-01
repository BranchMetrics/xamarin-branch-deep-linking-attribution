package mono.io.branch.referral;


public class Branch_BranchReferralStateChangedListenerImplementor
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		io.branch.referral.Branch.BranchReferralStateChangedListener
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onStateChanged:(ZLio/branch/referral/BranchError;)V:GetOnStateChanged_ZLio_branch_referral_BranchError_Handler:IO.Branch.Referral.AndroidNativeBranch/IBranchReferralStateChangedListenerInvoker, Branch-Xamarin-Lib.Droid\n" +
			"";
		mono.android.Runtime.register ("IO.Branch.Referral.AndroidNativeBranch+IBranchReferralStateChangedListenerImplementor, Branch-Xamarin-Lib.Droid, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null", Branch_BranchReferralStateChangedListenerImplementor.class, __md_methods);
	}


	public Branch_BranchReferralStateChangedListenerImplementor () throws java.lang.Throwable
	{
		super ();
		if (getClass () == Branch_BranchReferralStateChangedListenerImplementor.class)
			mono.android.TypeManager.Activate ("IO.Branch.Referral.AndroidNativeBranch+IBranchReferralStateChangedListenerImplementor, Branch-Xamarin-Lib.Droid, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null", "", this, new java.lang.Object[] {  });
	}


	public void onStateChanged (boolean p0, io.branch.referral.BranchError p1)
	{
		n_onStateChanged (p0, p1);
	}

	private native void n_onStateChanged (boolean p0, io.branch.referral.BranchError p1);

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
