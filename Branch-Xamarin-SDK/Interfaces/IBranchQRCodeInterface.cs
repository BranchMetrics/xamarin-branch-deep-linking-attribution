using System;

namespace BranchXamarinSDK
{
    public interface IBranchQRCodeInterface
    {
        void ReceivedQRCode(string qrCode);
        void QRCodeRequestError(BranchError error);
    }
}


