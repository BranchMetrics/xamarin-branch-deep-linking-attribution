using System;
using BranchXamarinSDK;
using BranchXamarinSDK.iOS;
using Foundation;

namespace BranchXamarinSDK.iOS
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

