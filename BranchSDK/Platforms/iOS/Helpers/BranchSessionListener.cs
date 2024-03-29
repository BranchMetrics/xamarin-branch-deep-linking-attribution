﻿using System;
using BranchSDK;
using BranchSDK.iOS;
using Foundation;

namespace BranchSDK.iOS
{
	public class BranchSessionListener
	{
		private IBranchSessionInterface callback = null;

		public BranchSessionListener (IBranchSessionInterface callback)
		{
			this.callback = callback;
		}

		public void InitCallback (NSDictionary data, NSError error) {

			if (callback == null) {
				return;
			}

			if (error == null) {

				callback.InitSessionComplete (BranchIOSUtils.ToDictionary(data));
			} else {

				BranchError err = new BranchError (error.Description, (int)error.Code);
				callback.SessionRequestError (err);
			}
		}
	}
}

