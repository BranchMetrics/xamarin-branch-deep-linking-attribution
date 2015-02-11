using System;

namespace BranchXamarinSDK
{
	public class Session
	{
		static public Session Current { get; set; }

		public String Id { get; set; }

		public Session (String id)
		{
			Id = id;
		}
	}
}

