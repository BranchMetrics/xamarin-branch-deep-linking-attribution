using System;

namespace BranchXamarinSDK
{
	public class User
	{
		static public User Current { get; set; }

		public String Id { get; set; }

		public User (String id)
		{
			Id = id;
		}
	}
}

