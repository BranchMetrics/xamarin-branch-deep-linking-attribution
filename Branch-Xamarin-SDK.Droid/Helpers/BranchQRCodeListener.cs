using System;
using System.Collections.Generic;
using Org.Json;
using Newtonsoft.Json;
using BranchXamarinSDK;
using BranchXamarinSDK.Droid;

namespace BranchXamarinSDK.Droid
{
    public class BranchQRCodeListener : Java.Lang.Object, IO.Branch.Referral.QRCode.BranchQRCode.IBranchQRCodeDataHandler
    {
        private IBranchQRCodeInterface callback = null;

        public BranchQRCodeListener(IBranchQRCodeInterface callback)
        {
            this.callback = callback;
        }

        public void OnFailure(Java.Lang.Exception error)
        {
            BranchError err = new BranchError("Error getting QR Code: " + error.Message);
            callback.QRCodeRequestError(err);
        }

        public void OnSuccess(byte[] qrCode)
        {
            callback.ReceivedQRCode(qrCode);
        }
    }
}

