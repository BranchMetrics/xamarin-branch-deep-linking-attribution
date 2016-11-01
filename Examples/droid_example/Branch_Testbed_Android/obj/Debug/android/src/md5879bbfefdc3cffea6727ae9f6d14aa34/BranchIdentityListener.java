package md5879bbfefdc3cffea6727ae9f6d14aa34;


public class BranchIdentityListener
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		io.branch.referral.Branch.BranchReferralInitListener,
		io.branch.referral.Branch.LogoutStatusListener
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onInitFinished:(Lorg/json/JSONObject;Lio/branch/referral/BranchError;)V:GetOnInitFinished_Lorg_json_JSONObject_Lio_branch_referral_BranchError_Handler:IO.Branch.Referral.AndroidNativeBranch/IBranchReferralInitListenerInvoker, Branch-Xamarin-Lib.Droid\n" +
			"n_onLogoutFinished:(ZLio/branch/referral/BranchError;)V:GetOnLogoutFinished_ZLio_branch_referral_BranchError_Handler:IO.Branch.Referral.AndroidNativeBranch/ILogoutStatusListenerInvoker, Branch-Xamarin-Lib.Droid\n" +
			"";
		mono.android.Runtime.register ("BranchXamarinSDK.Droid.BranchIdentityListener, Branch-Xamarin-SDK.Droid, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null", BranchIdentityListener.class, __md_methods);
	}


	public BranchIdentityListener () throws java.lang.Throwable
	{
		super ();
		if (getClass () == BranchIdentityListener.class)
			mono.android.TypeManager.Activate ("BranchXamarinSDK.Droid.BranchIdentityListener, Branch-Xamarin-SDK.Droid, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null", "", this, new java.lang.Object[] {  });
	}


	public void onInitFinished (org.json.JSONObject p0, io.branch.referral.BranchError p1)
	{
		n_onInitFinished (p0, p1);
	}

	private native void n_onInitFinished (org.json.JSONObject p0, io.branch.referral.BranchError p1);


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
