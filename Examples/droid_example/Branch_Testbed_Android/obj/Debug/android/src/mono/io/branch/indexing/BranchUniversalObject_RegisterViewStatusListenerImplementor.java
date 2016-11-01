package mono.io.branch.indexing;


public class BranchUniversalObject_RegisterViewStatusListenerImplementor
	extends java.lang.Object
	implements
		mono.android.IGCUserPeer,
		io.branch.indexing.BranchUniversalObject.RegisterViewStatusListener
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onRegisterViewFinished:(ZLio/branch/referral/BranchError;)V:GetOnRegisterViewFinished_ZLio_branch_referral_BranchError_Handler:IO.Branch.Indexing.BranchUniversalObject/IRegisterViewStatusListenerInvoker, Branch-Xamarin-Lib.Droid\n" +
			"";
		mono.android.Runtime.register ("IO.Branch.Indexing.BranchUniversalObject+IRegisterViewStatusListenerImplementor, Branch-Xamarin-Lib.Droid, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null", BranchUniversalObject_RegisterViewStatusListenerImplementor.class, __md_methods);
	}


	public BranchUniversalObject_RegisterViewStatusListenerImplementor () throws java.lang.Throwable
	{
		super ();
		if (getClass () == BranchUniversalObject_RegisterViewStatusListenerImplementor.class)
			mono.android.TypeManager.Activate ("IO.Branch.Indexing.BranchUniversalObject+IRegisterViewStatusListenerImplementor, Branch-Xamarin-Lib.Droid, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null", "", this, new java.lang.Object[] {  });
	}


	public void onRegisterViewFinished (boolean p0, io.branch.referral.BranchError p1)
	{
		n_onRegisterViewFinished (p0, p1);
	}

	private native void n_onRegisterViewFinished (boolean p0, io.branch.referral.BranchError p1);

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
