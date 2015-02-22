using System;

namespace BranchXamarinSDK
{
	public class CreditHistoryEntry
	{
		public class Transaction {
			public string date;
			public string id;
			public string bucket;
			public int amount;
			public int type;
		}

		public Transaction transaction;
		public string referrer;
		public string referree;

		public CreditHistoryEntry ()
		{
		}
	}
}

