package md5879bbfefdc3cffea6727ae9f6d14aa34;


public class BranchUrlListener
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
		mono.android.Runtime.register ("BranchXamarinSDK.Droid.BranchUrlListener, Branch-Xamarin-SDK.Droid, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null", BranchUrlListener.class, __md_methods);
	}


	public BranchUrlListener () throws java.lang.Throwable
	{
		super ();
		if (getClass () == BranchUrlListener.class)
			mono.android.TypeManager.Activate ("BranchXamarinSDK.Droid.BranchUrlListener, Branch-Xamarin-SDK.Droid, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null", "", this, new java.lang.Object[] {  });
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
