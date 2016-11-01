package mono.io.branch.referral;


public class Branch_BranchReferralInitListenerImplementor
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		io.branch.referral.Branch.BranchReferralInitListener
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onInitFinished:(Lorg/json/JSONObject;Lio/branch/referral/BranchError;)V:GetOnInitFinished_Lorg_json_JSONObject_Lio_branch_referral_BranchError_Handler:IO.Branch.Referral.AndroidNativeBranch/IBranchReferralInitListenerInvoker, Branch-Xamarin-Lib.Droid\n" +
			"";
		mono.android.Runtime.register ("IO.Branch.Referral.AndroidNativeBranch+IBranchReferralInitListenerImplementor, Branch-Xamarin-Lib.Droid, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null", Branch_BranchReferralInitListenerImplementor.class, __md_methods);
	}


	public Branch_BranchReferralInitListenerImplementor () throws java.lang.Throwable
	{
		super ();
		if (getClass () == Branch_BranchReferralInitListenerImplementor.class)
			mono.android.TypeManager.Activate ("IO.Branch.Referral.AndroidNativeBranch+IBranchReferralInitListenerImplementor, Branch-Xamarin-Lib.Droid, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null", "", this, new java.lang.Object[] {  });
	}


	public void onInitFinished (org.json.JSONObject p0, io.branch.referral.BranchError p1)
	{
		n_onInitFinished (p0, p1);
	}

	private native void n_onInitFinished (org.json.JSONObject p0, io.branch.referral.BranchError p1);

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
