using System;

using UIKit;

namespace Branch_Testbed_iOS
{
	public partial class LogViewController : UIViewController
	{
		public string logText;

		public LogViewController(IntPtr hanlde) : base(hanlde)
		{
		}

		public override void ViewDidLoad()
		{
			base.ViewDidLoad();
		}

		public override void ViewWillAppear(bool animated)
		{
			base.ViewWillAppear(animated);

			lblLog.Text = logText;
		}

		public override void DidReceiveMemoryWarning()
		{
			base.DidReceiveMemoryWarning();
		}
	}
}

