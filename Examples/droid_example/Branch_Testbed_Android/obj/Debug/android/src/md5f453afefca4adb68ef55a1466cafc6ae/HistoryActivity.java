package md5f453afefca4adb68ef55a1466cafc6ae;


public class HistoryActivity
	extends android.app.ListActivity
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onCreate:(Landroid/os/Bundle;)V:GetOnCreate_Landroid_os_Bundle_Handler\n" +
			"";
		mono.android.Runtime.register ("Branch_Testbed_Android.HistoryActivity, Branch_Testbed_Android, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null", HistoryActivity.class, __md_methods);
	}


	public HistoryActivity () throws java.lang.Throwable
	{
		super ();
		if (getClass () == HistoryActivity.class)
			mono.android.TypeManager.Activate ("Branch_Testbed_Android.HistoryActivity, Branch_Testbed_Android, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null", "", this, new java.lang.Object[] {  });
	}


	public void onCreate (android.os.Bundle p0)
	{
		n_onCreate (p0);
	}

	private native void n_onCreate (android.os.Bundle p0);

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
