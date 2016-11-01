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
    [Register ("LogViewController")]
    partial class LogViewController
    {
        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UITextView lblLog { get; set; }

        void ReleaseDesignerOutlets ()
        {
            if (lblLog != null) {
                lblLog.Dispose ();
                lblLog = null;
            }
        }
    }
}