using System;

namespace BranchXamarinSDK
{
	public class BranchError
	{
		public String ErrorMessage { get; set; }
		public int ErrorCode { get; set; }

		public BranchError (int code) {
			ErrorCode = code;
			ErrorMessage = "Error: " + code;
		}

		public BranchError (String message) {
			ErrorCode = -1;
			ErrorMessage = message;
		}

		public BranchError (String message, int code) {
			ErrorCode = code;
			ErrorMessage = message;
		}
	}
}

