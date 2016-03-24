using System;
using System.Collections.Generic;
using Org.Json;
using Newtonsoft.Json;
using BranchXamarinSDK;
using BranchXamarinSDK.Droid;

namespace BranchXamarinSDK.Droid
{
	public class BranchUrlListener : Java.Lang.Object, IO.Branch.Referral.AndroidNativeBranch.IBranchLinkCreateListener
	{
		private IBranchUrlInterface callback = null;

		public BranchUrlListener (IBranchUrlInterface callback)
		{
			this.callback = callback;
		}

		public void OnLinkCreate (string url, IO.Branch.Referral.BranchError error) {
			if (callback == null) {
				return;
			}

			if (error == null) {

				callback.ReceivedUrl(url);
			} else {

				BranchError err = new BranchError (error.Message, error.ErrorCode);
				callback.UrlRequestError (err);
			}
		}
	}
}

