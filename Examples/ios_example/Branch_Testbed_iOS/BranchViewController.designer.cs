// WARNING
//
// This file has been generated automatically by Xamarin Studio from the outlets and
// actions declared in your storyboard file.
// Manual changes to this file will not be maintained.
//
using Foundation;
using System;
using System.CodeDom.Compiler;
using UIKit;

namespace Branch_Testbed_iOS
{
    [Register ("BranchViewController")]
    partial class BranchViewController
    {
        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton btnSetUserID { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UITextField inputShortLink { get; set; }

        [Action ("CreateBranchLink:")]
        [GeneratedCode ("iOS Designer", "1.0")]
        partial void CreateBranchLink (UIKit.UIButton sender);

        [Action ("RegisterForSpotlight:")]
        [GeneratedCode ("iOS Designer", "1.0")]
        partial void RegisterForSpotlight (UIKit.UIButton sender);

        [Action ("SendBuyEvent:")]
        [GeneratedCode ("iOS Designer", "1.0")]
        partial void SendBuyEvent (UIKit.UIButton sender);

        [Action ("SendComplexEvent:")]
        [GeneratedCode ("iOS Designer", "1.0")]
        partial void SendComplexEvent (UIKit.UIButton sender);

        [Action ("SetUserID:")]
        [GeneratedCode ("iOS Designer", "1.0")]
        partial void SetUserID (UIKit.UIButton sender);

        [Action ("ShareLink:")]
        [GeneratedCode ("iOS Designer", "1.0")]
        partial void ShareLink (UIKit.UIButton sender);

        [Action ("SimulateContentAccess:")]
        [GeneratedCode ("iOS Designer", "1.0")]
        partial void SimulateContentAccess (UIKit.UIButton sender);

        [Action ("SimulateLogout:")]
        [GeneratedCode ("iOS Designer", "1.0")]
        partial void SimulateLogout (UIKit.UIButton sender);

        [Action ("ViewFirstReferringParams:")]
        [GeneratedCode ("iOS Designer", "1.0")]
        partial void ViewFirstReferringParams (UIKit.UIButton sender);

        [Action ("ViewLatestReferringParams:")]
        [GeneratedCode ("iOS Designer", "1.0")]
        partial void ViewLatestReferringParams (UIKit.UIButton sender);

        void ReleaseDesignerOutlets ()
        {
            if (btnSetUserID != null) {
                btnSetUserID.Dispose ();
                btnSetUserID = null;
            }

            if (inputShortLink != null) {
                inputShortLink.Dispose ();
                inputShortLink = null;
            }

        }
    }
}