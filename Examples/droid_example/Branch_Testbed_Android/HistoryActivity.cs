
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using BranchXamarinSDK;
using Newtonsoft.Json;

using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;

namespace Branch_Testbed_Android
{
	[Activity(Label = "HistoryActivity")]
	public class HistoryActivity : ListActivity
	{
		List<string> items = new List<string>();

		protected override void OnCreate(Bundle savedInstanceState)
		{
			base.OnCreate(savedInstanceState);

			// Create your application here
			List<CreditHistoryEntry> history = JsonConvert.DeserializeObject<List<CreditHistoryEntry>>(Intent.GetStringExtra("HistoryArray"));
			items.Clear();

			foreach (var entry in history)
			{
				string item = ParseTransaction(entry.transaction);
				item += "   ";
				item += entry.referrer;
				item += "   ";
				item += entry.referree;
				items.Add(item);
			}

			if (items.Count == 0)
			{
				items.Add("Empty");
			}

			ListAdapter = new ArrayAdapter<string>(this, Resource.Layout.HistoryLayout, items);
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
	}
}
