using System;

namespace BranchXamarinSDK
{
	public class Branch
	{
		private static Branch _branch;

		private String AppKey;

		private Branch ()
		{
		}

		public static Branch getInstance(String appKey) {
			if (_branch == null) {
				_branch = new Branch ();
			}

			_branch.AppKey = appKey;

			return _branch;
		}
	}
}

