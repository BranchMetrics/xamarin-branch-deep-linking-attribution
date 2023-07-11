using System;
using BranchSDK;
using BranchSDK.iOS;
using Foundation;

namespace BranchSDK.iOS
{
	public class BranchUrlListener
	{
		private IBranchUrlInterface callback = null;

		public BranchUrlListener (IBranchUrlInterface callback)
		{
			this.callback = callback;
		}

		public void GetShortUrlCallback (string url, NSError error) {

			if (callback == null) {
				return;
			}

			if (error == null) {

				callback.ReceivedUrl (url);
			} else {

				BranchError err = new BranchError (error.Description, (int)error.Code);
				callback.UrlRequestError (err);
			}
		}
	}
}

