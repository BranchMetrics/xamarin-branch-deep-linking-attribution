using System;
using System.Collections.Generic;
using BranchXamarinSDK;
using UIKit;

namespace Branch_Testbed_iOS
{
	public partial class HistoryTableViewController : UITableViewController
	{
		public List<CreditHistoryEntry> DataSource;

		private readonly string cellIdentifier = "HistoryCell";

		public HistoryTableViewController(IntPtr hanlde) : base(hanlde)
		{
		}

		public override void ViewDidLoad()
		{
			base.ViewDidLoad();
		}

		public override nint RowsInSection(UITableView tableView, nint section)
		{
			return DataSource.Count > 0 ? DataSource.Count : 1;
		}

		public override UITableViewCell GetCell(UITableView tableView, Foundation.NSIndexPath indexPath)
		{
			UITableViewCell cell = tableView.DequeueReusableCell(cellIdentifier);

			//---- if there are no cells to reuse, create a new one
			if (cell == null)
			{ cell = new UITableViewCell(UITableViewCellStyle.Default, cellIdentifier); }

			if (DataSource.Count > 0)
			{
				string item = ParseTransaction(DataSource[indexPath.Row].transaction);
				item += "   ";
				item += DataSource[indexPath.Row].referrer;
				item += "   ";
				item += DataSource[indexPath.Row].referree;

				cell.TextLabel.Text = item;
			}
			else {
				cell.TextLabel.Text = "Empty";
			}

			return cell;
		}

		string ParseTransaction(CreditHistoryEntry.Transaction transaction)
		{
			string strRes = "";

			if (transaction != null)
			{
				strRes += "type = " + transaction.type.ToString();
				strRes += "  id = " + transaction.id;
				strRes += "  bucket = " + transaction.bucket;
				strRes += "  amount = " + transaction.amount.ToString();
				strRes += "  date = " + transaction.date;
			}

			return strRes;
		}

		public override void DidReceiveMemoryWarning()
		{
			base.DidReceiveMemoryWarning();
		}
	}
}

