package mono.io.branch.referral;


public class Branch_LogoutStatusListenerImplementor
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		io.branch.referral.Branch.LogoutStatusListener
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onLogoutFinished:(ZLio/branch/referral/BranchError;)V:GetOnLogoutFinished_ZLio_branch_referral_BranchError_Handler:IO.Branch.Referral.AndroidNativeBranch/ILogoutStatusListenerInvoker, Branch-Xamarin-Lib.Droid\n" +
			"";
		mono.android.Runtime.register ("IO.Branch.Referral.AndroidNativeBranch+ILogoutStatusListenerImplementor, Branch-Xamarin-Lib.Droid, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null", Branch_LogoutStatusListenerImplementor.class, __md_methods);
	}


	public Branch_LogoutStatusListenerImplementor () throws java.lang.Throwable
	{
		super ();
		if (getClass () == Branch_LogoutStatusListenerImplementor.class)
			mono.android.TypeManager.Activate ("IO.Branch.Referral.AndroidNativeBranch+ILogoutStatusListenerImplementor, Branch-Xamarin-Lib.Droid, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null", "", this, new java.lang.Object[] {  });
	}


	public void onLogoutFinished (boolean p0, io.branch.referral.BranchError p1)
	{
		n_onLogoutFinished (p0, p1);
	}

	private native void n_onLogoutFinished (boolean p0, io.branch.referral.BranchError p1);

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
