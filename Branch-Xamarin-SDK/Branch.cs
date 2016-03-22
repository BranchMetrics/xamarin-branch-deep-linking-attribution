using System;
using System.Collections;
using System.Collections.Generic;

namespace BranchXamarinSDK
{
	abstract public class Branch
	{
		#region Singleton

		protected static Branch branchInstance = null;

		protected Branch () { }

		public static Branch GetInstance() {
			if (branchInstance == null) {
				throw new BranchException ("You must initialize Branch before you can use the Branch object!");
			}

			return branchInstance;
		}

		#endregion

		/// <summary>
		/// Gets or sets the debug value.  If true, a random device id
		/// will be used and each install will be considered a new install.
		/// </summary>
		/// <value><c>true</c> if debug; otherwise, <c>false</c>.</value>
		public static bool Debug = false;

		/// <summary>
		/// Gets or sets the Branch key. This is generally
		/// set by the platform specific Init methods.
		/// </summary>
		/// <value>The Branch key.</value>
		protected String branchKey { get; set; }

		protected List<Object> callbacksList = new List<object>();


		#region Session methods
		/// <summary>
		/// Initiate a Branch session.
		/// </summary>
		/// <param name="callback">Callback.</param>
		public virtual void InitSession (IBranchSessionInterface callback) { callbacksList.Clear (); }

		/// <summary>
		/// Closes the session.
		/// </summary>
		abstract public void CloseSession ();

		/// <summary>
		/// Get the referring parameters from the last open.
		/// </summary>
		/// <returns>The referring parameters from the last open.</returns>
		abstract public Dictionary<String, object> GetLastReferringParams ();

		/// <summary>
		/// Get the referring parameters from the initial install.
		/// </summary>
		/// <returns>The referring parameters from the initial install.</returns>
		abstract public Dictionary<String, object> GetFirstReferringParams ();

		/// <summary>
		/// Internal method: Sets debug mode. Use Debug instead.
		/// </summary>
		abstract protected void SetDebug ();

		#endregion

		#region Identity methods

		/// <summary>
		/// Set the user's identity to an ID used by your system, so that it is identifiable by you elsewhere.
		/// If you call setIdentity, this device will have that identity associated with this user until `logout` is called.
		/// This includes persisting through uninstalls, as we track device id.
		/// </summary>
		/// <param name="user">The ID Branch should use to identify this user.</param>
		/// <param name="callback">The callback that is called once the request has completed.</param>
		abstract public void SetIdentity(String user, IBranchIdentityInterface callback);

		/// <summary>
		/// Clear all of the current user's session items.
		/// </summary>
		/// <param name="callback">The callback that is called once the request has completed.</param>
		abstract public void Logout (IBranchIdentityInterface callback = null);

		#endregion


		#region Short Links methods

		/// <summary>
		/// Get a short url with specified tags, params, channel, feature, stage, and match duration.
		/// </summary>
		/// <param name="callback">The callback that is called once the request has completed.</param>
		/// <param name="parameters">Dictionary of parameters to include in the link.</param>
		/// <param name="channel">The channel for the link. Examples could be Facebook, Twitter, SMS, etc.</param>
		/// <param name="stage">The stage used for the generated link, indicating what part of a funnel the user is in.</param>
		/// <param name="tags">An array of tags to associate with this link, useful for tracking.</param>
		/// <param name="feature">The feature this is utilizing. Examples could be Sharing, Referring, Inviting, etc.</param>
		/// <param name="duration">How long to keep an unmatched link click in the Branch backend server's queue before discarding.</param>
		abstract public void GetShortUrl (IBranchUrlInterface callback,
		                                  Dictionary<String, dynamic> parameters = null,
		                                  string channel = "",
		                                  string stage = "",
		                                  ICollection<String> tags = null,
		                                  string feature = "",
		                                  int duration = 0);

		/// <summary>
		/// Get a short url with specified tags, params, channel, feature, stage, and type.
		/// </summary>
		/// <param name="callback">The callback that is called once the request has completed.</param>
		/// <param name="type">The type of link this is, one of Single Use or Unlimited Use. Single use means once *per user*, not once period.</param>
		/// <param name="parameters">Dictionary of parameters to include in the link.</param>
		/// <param name="channel">The channel for the link. Examples could be Facebook, Twitter, SMS, etc.</param>
		/// <param name="stage">The stage used for the generated link, indicating what part of a funnel the user is in.</param>
		/// <param name="tags">An array of tags to associate with this link, useful for tracking.</param>
		/// <param name="feature">The feature this is utilizing. Examples could be Sharing, Referring, Inviting, etc.</param>
		abstract public void GetShortUrl (IBranchUrlInterface callback,
		                                  int type = Constants.URL_TYPE_UNLIMITED,
		                                  Dictionary<String, dynamic> parameters = null,
		                                  string channel = "",
		                                  string stage = "",
		                                  ICollection<String> tags = null,
		                                  string feature = "");

		#endregion


		#region Action methods

		/// <summary>
		/// Send a user action to the server. Some examples actions could be things like `viewed_personal_welcome`, `purchased_an_item`, etc.
		/// </summary>
		/// <param name="action">The action string.</param>
		/// <param name="metadata">The additional state items associated with the action.</param>
		abstract public void UserCompletedAction (String action, Dictionary<string, object> metadata = null);

		#endregion


		#region Credits methods

		/// <summary>
		/// Loads credit totals from the server.
		/// </summary>
		/// <param name="callback">The callback that is called once the request has completed.</param>
		abstract public void LoadRewards (IBranchRewardsInterface callback);

		/// <summary>
		/// Redeem credits from the specified bucket.
		/// </summary>
		/// <param name="callback">The callback that is called once the request has completed.</param>
		/// <param name="amount">The number of credits to redeem.</param>
		/// <param name="bucket">The bucket to redeem credits from.</param>
		abstract public void RedeemRewards (IBranchRewardsInterface callback, int amount, string bucket = "default");

		/// <summary>
		/// Gets the credit history.
		/// </summary>
		/// <param name="callback">The callback that is called once the request has completed.</param>
		/// <param name="bucket">The bucket to get transaction history for.</param>
		/// <param name="afterId">The ID of the transaction to start from.</param>
		/// <param name="length">The number of transactions to pull.</param>
		/// <param name="mostRecentFirst">he direction to order transactions in the callback list.
		/// Least recent first means oldest items will be in the front of the response array,
		/// most recent means newest items will be front.</param>
		abstract public void GetCreditHistory (IBranchRewardsInterface callback,
		                                       string bucket = "",
		                                       string afterId = "",
		                                       int length = 100,
		                                       bool mostRecentFirst = true);

		/// <summary>
		/// Get the local credit balance for the default bucket. You must `LoadRewards` before calling `GetCredits`. This method does not make a request for the balance.
		/// </summary>
		/// <returns>The credits.</returns>
		abstract public int GetCredits ();

		/// <summary>
		/// Get the local credit balance for the specified bucket. You must `LoadRewards` before calling `GetCredits`. This method does not make a request for the balance.
		/// </summary>
		/// <returns>The credits for bucket.</returns>
		/// <param name="bucket">The bucket to get credits balance from.</param>
		abstract public int GetCreditsForBucket (string bucket);

		#endregion


		#region Configuration methods

		/// <summary>
		/// Specify the time to wait in seconds between retries in the case of a Branch server error.
		/// </summary>
		/// <param name="retryInterval">Number of seconds to wait between retries.</param>
		abstract public void SetRetryInterval (int retryInterval);

		/// <summary>
		/// Specify the max number of times to retry in the case of a Branch server error.
		/// </summary>
		/// <param name="maxRetries">Number of retries to make.</param>
		abstract public void SetMaxRetries (int maxRetries);

		/// <summary>
		/// Specify the amount of time before a request should be considered "timed out".
		/// </summary>
		/// <param name="timeout">Number of seconds to before a request is considered timed out.</param>
		abstract public void SetNetworkTimeout (int timeout);

		/// <summary>
		/// If you're using a version of the Facebook SDK that prevents application:didFinishLaunchingWithOptions:
		/// from returning YES/true when a Universal Link is clicked, you should enable this option.
		/// </summary>
		abstract public void AccountForFacebookSDKPreventingAppLaunch ();
			
		#endregion
	}
}

