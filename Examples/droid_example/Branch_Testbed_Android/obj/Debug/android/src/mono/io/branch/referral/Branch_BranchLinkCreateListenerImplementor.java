package mono.io.branch.referral;


public class Branch_BranchLinkCreateListenerImplementor
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		io.branch.referral.Branch.BranchLinkCreateListener
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onLinkCreate:(Ljava/lang/String;Lio/branch/referral/BranchError;)V:GetOnLinkCreate_Ljava_lang_String_Lio_branch_referral_BranchError_Handler:IO.Branch.Referral.AndroidNativeBranch/IBranchLinkCreateListenerInvoker, Branch-Xamarin-Lib.Droid\n" +
			"";
		mono.android.Runtime.register ("IO.Branch.Referral.AndroidNativeBranch+IBranchLinkCreateListenerImplementor, Branch-Xamarin-Lib.Droid, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null", Branch_BranchLinkCreateListenerImplementor.class, __md_methods);
	}


	public Branch_BranchLinkCreateListenerImplementor () throws java.lang.Throwable
	{
		super ();
		if (getClass () == Branch_BranchLinkCreateListenerImplementor.class)
			mono.android.TypeManager.Activate ("IO.Branch.Referral.AndroidNativeBranch+IBranchLinkCreateListenerImplementor, Branch-Xamarin-Lib.Droid, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null", "", this, new java.lang.Object[] {  });
	}


	public void onLinkCreate (java.lang.String p0, io.branch.referral.BranchError p1)
	{
		n_onLinkCreate (p0, p1);
	}

	private native void n_onLinkCreate (java.lang.String p0, io.branch.referral.BranchError p1);

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
