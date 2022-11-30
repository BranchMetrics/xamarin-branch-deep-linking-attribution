using System;
using System.Collections.Generic;
using Org.Json;
using Newtonsoft.Json;
using BranchXamarinSDK;
using BranchXamarinSDK.Droid;

namespace BranchXamarinSDK.Droid
{
    public class BranchQRCodeListener : Java.Lang.Object, IO.Branch.Referral.AndroidNativeBranch.IBranchLinkCreateListener
    {
        private IBranchQRCodeInterface callback = null;

        public BranchQRCodeListener(IBranchQRCodeInterface callback)
        {
            this.callback = callback;
        }

        public void OnQRCodeCreate(string qrCode, IO.Branch.Referral.BranchError error)
        {
            if (callback == null)
            {
                return;
            }

            if (error == null)
            {

                callback.ReceivedQRCode(qrCode);
            }
            else
            {

                BranchError err = new BranchError(error.Message, error.ErrorCode);
                callback.QRCodeRequestError(err);
            }
        }
    }
}

