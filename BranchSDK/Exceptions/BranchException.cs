using System;

namespace BranchSDK
{
	public class BranchException : Exception
	{
		public BranchException() {
		}

		public BranchException(String message) : base(message) {
		}

		public BranchException(String message, Exception inner) : base(message, inner) {
		}
	}
}

