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
            BranchError err = new BranchError("Error getting QR Code", 1);
            callback.QRCodeRequestError(err);
        }

        public void OnSuccess(byte[] qrCodeData)
        {
            string qrCode = System.Text.Encoding.UTF8.GetString(qrCodeData, 0, qrCodeData.Length);
            callback.ReceivedQRCode(qrCode);
        }

        /*public void OnQRCodeCreate(string qrCode, IO.Branch.Referral.BranchError error)
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
        }*/

    }
}

