package mono.io.branch.referral;


public class Branch_BranchLinkShareListenerImplementor
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		io.branch.referral.Branch.BranchLinkShareListener
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onChannelSelected:(Ljava/lang/String;)V:GetOnChannelSelected_Ljava_lang_String_Handler:IO.Branch.Referral.AndroidNativeBranch/IBranchLinkShareListenerInvoker, Branch-Xamarin-Lib.Droid\n" +
			"n_onLinkShareResponse:(Ljava/lang/String;Ljava/lang/String;Lio/branch/referral/BranchError;)V:GetOnLinkShareResponse_Ljava_lang_String_Ljava_lang_String_Lio_branch_referral_BranchError_Handler:IO.Branch.Referral.AndroidNativeBranch/IBranchLinkShareListenerInvoker, Branch-Xamarin-Lib.Droid\n" +
			"n_onShareLinkDialogDismissed:()V:GetOnShareLinkDialogDismissedHandler:IO.Branch.Referral.AndroidNativeBranch/IBranchLinkShareListenerInvoker, Branch-Xamarin-Lib.Droid\n" +
			"n_onShareLinkDialogLaunched:()V:GetOnShareLinkDialogLaunchedHandler:IO.Branch.Referral.AndroidNativeBranch/IBranchLinkShareListenerInvoker, Branch-Xamarin-Lib.Droid\n" +
			"";
		mono.android.Runtime.register ("IO.Branch.Referral.AndroidNativeBranch+IBranchLinkShareListenerImplementor, Branch-Xamarin-Lib.Droid, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null", Branch_BranchLinkShareListenerImplementor.class, __md_methods);
	}


	public Branch_BranchLinkShareListenerImplementor () throws java.lang.Throwable
	{
		super ();
		if (getClass () == Branch_BranchLinkShareListenerImplementor.class)
			mono.android.TypeManager.Activate ("IO.Branch.Referral.AndroidNativeBranch+IBranchLinkShareListenerImplementor, Branch-Xamarin-Lib.Droid, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null", "", this, new java.lang.Object[] {  });
	}


	public void onChannelSelected (java.lang.String p0)
	{
		n_onChannelSelected (p0);
	}

	private native void n_onChannelSelected (java.lang.String p0);


	public void onLinkShareResponse (java.lang.String p0, java.lang.String p1, io.branch.referral.BranchError p2)
	{
		n_onLinkShareResponse (p0, p1, p2);
	}

	private native void n_onLinkShareResponse (java.lang.String p0, java.lang.String p1, io.branch.referral.BranchError p2);


	public void onShareLinkDialogDismissed ()
	{
		n_onShareLinkDialogDismissed ();
	}

	private native void n_onShareLinkDialogDismissed ();


	public void onShareLinkDialogLaunched ()
	{
		n_onShareLinkDialogLaunched ();
	}

	private native void n_onShareLinkDialogLaunched ();

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
