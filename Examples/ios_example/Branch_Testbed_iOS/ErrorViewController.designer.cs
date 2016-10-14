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
    [Register ("ErrorViewController")]
    partial class ErrorViewController
    {
        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UITextView errorTextView { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel errorTitleLabel { get; set; }

        void ReleaseDesignerOutlets ()
        {
            if (errorTextView != null) {
                errorTextView.Dispose ();
                errorTextView = null;
            }

            if (errorTitleLabel != null) {
                errorTitleLabel.Dispose ();
                errorTitleLabel = null;
            }
        }
    }
}