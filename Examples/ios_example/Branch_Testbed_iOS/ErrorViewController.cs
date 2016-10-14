using System;

using UIKit;

namespace Branch_Testbed_iOS
{
	public partial class ErrorViewController : UIViewController
	{
		public ErrorViewController(IntPtr handle) : base(handle)
		{
		}

		public override void ViewDidLoad()
		{
			base.ViewDidLoad();
		}

		public void SetError(string title, string text)
		{
			errorTitleLabel.Text = title;
			errorTextView.Text = text;
		}

		public override void DidReceiveMemoryWarning()
		{
			base.DidReceiveMemoryWarning();
		}
	}
}

