using System;

namespace BranchXamarinSDK
{
	public class User
	{
		static public User Current { get; set; }

		public String Id { get; set; }
		public String Identity { get; set; }
		public String URL { get; set; }

		public User (String id, String identity, String url)
		{
			Id = id;
			Identity = identity;
			URL = url;
		}
	}
}

