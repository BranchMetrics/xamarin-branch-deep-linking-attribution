package mono.io.branch.referral;


public class Branch_BranchListResponseListenerImplementor
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		io.branch.referral.Branch.BranchListResponseListener
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onReceivingResponse:(Lorg/json/JSONArray;Lio/branch/referral/BranchError;)V:GetOnReceivingResponse_Lorg_json_JSONArray_Lio_branch_referral_BranchError_Handler:IO.Branch.Referral.AndroidNativeBranch/IBranchListResponseListenerInvoker, Branch-Xamarin-Lib.Droid\n" +
			"";
		mono.android.Runtime.register ("IO.Branch.Referral.AndroidNativeBranch+IBranchListResponseListenerImplementor, Branch-Xamarin-Lib.Droid, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null", Branch_BranchListResponseListenerImplementor.class, __md_methods);
	}


	public Branch_BranchListResponseListenerImplementor () throws java.lang.Throwable
	{
		super ();
		if (getClass () == Branch_BranchListResponseListenerImplementor.class)
			mono.android.TypeManager.Activate ("IO.Branch.Referral.AndroidNativeBranch+IBranchListResponseListenerImplementor, Branch-Xamarin-Lib.Droid, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null", "", this, new java.lang.Object[] {  });
	}


	public void onReceivingResponse (org.json.JSONArray p0, io.branch.referral.BranchError p1)
	{
		n_onReceivingResponse (p0, p1);
	}

	private native void n_onReceivingResponse (org.json.JSONArray p0, io.branch.referral.BranchError p1);

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
