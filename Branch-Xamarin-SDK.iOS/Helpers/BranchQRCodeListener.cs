using System;
using BranchXamarinSDK;
using BranchXamarinSDK.iOS;
using Foundation;

namespace BranchXamarinSDK.iOS
{
    public class BranchQRCodeListener
    {
        private IBranchQRCodeInterface callback = null;

        public BranchQRCodeListener(BranchQRCodeListener callback)
        {
            this.callback = callback;
        }

        public void GetQRCodeCallback(string qrCode, NSError error)
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

                BranchError err = new BranchError(error.Description, (int)error.Code);
                callback.QRCodeRequestError(err);
            }
        }
    }
}