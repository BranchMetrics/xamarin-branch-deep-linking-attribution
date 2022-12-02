using System;

namespace BranchXamarinSDK
{
    public interface IBranchQRCodeInterface
    {
        void ReceivedQRCode(byte[] qrCode);
        void QRCodeRequestError(BranchError error);
    }
}


