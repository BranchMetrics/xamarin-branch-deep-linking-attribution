using System;
using BranchXamarinSDK;
using BranchXamarinSDK.iOS;
using Foundation;

namespace BranchXamarinSDK.iOS
{
    public class BranchQRCodeListener
    {
        private IBranchQRCodeInterface callback = null;

        public BranchQRCodeListener(IBranchQRCodeInterface callback)
        {
            this.callback = callback;
        }

        public void GetQRCodeCallback(NSData qrCode, NSError error)
        {

            if (callback == null)   {
                return;
            }

            if (error == null) {
                byte[] dataBytes = new byte[qrCode.Length];
                System.Runtime.InteropServices.Marshal.Copy(qrCode.Bytes, dataBytes, 0, Convert.ToInt32(qrCode.Length));
                callback.ReceivedQRCode(dataBytes);
            } else {
                BranchError err = new BranchError(error.Description, (int)error.Code);
                callback.QRCodeRequestError(err);
            }
        }
    }
}