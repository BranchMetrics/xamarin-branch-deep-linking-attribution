using System;
using System.Collections.Generic;
using BranchXamarinSDK;
using Foundation;
using UIKit;

namespace Branch_Testbed_iOS
{
	public partial class BranchViewController : UIViewController, IBranchUrlInterface, IBranchRewardsInterface, IBranchIdentityInterface, IBranchLinkShareInterface
	{
		private BranchUniversalObject universalObject = null;
		private BranchLinkProperties linkProperties = null;
		private string logString = "";
		private List<CreditHistoryEntry> history;

		public BranchViewController(IntPtr handle) : base(handle)
		{
		}

		public override void ViewDidLoad()
		{
			base.ViewDidLoad();

			NSNotificationCenter.DefaultCenter.AddObserver((NSString)Constants.Branch_notification, (obj) =>
			{
				LogMessage("Branch initialization completed: ");

				BranchUniversalObject buo = null;
				BranchLinkProperties blp = null;

				if (obj.UserInfo[(NSString)"+is_first_session"].ToString().Equals("1"))
				{
					buo = Branch.GetInstance().GetFirstReferringBranchUniversalObject();
					blp = Branch.GetInstance().GetFirstReferringBranchLinkProperties();
				}
				else
				{
					buo = Branch.GetInstance().GetLastReferringBranchUniversalObject();
					blp = Branch.GetInstance().GetLastReferringBranchLinkProperties();
				}

				LogMessage("\n\nUniversalObject : \n" + buo.ToJsonString());
				LogMessage("\n\nLinkProperties : \n" + blp.ToJsonString());
			});

			inputShortLink.ShouldReturn = delegate {
				inputShortLink.ResignFirstResponder();
				return true;
			};
		}

		public override void DidReceiveMemoryWarning()
		{
			base.DidReceiveMemoryWarning();
		}

		#region Utils

		private void LogMessage(string message)
		{
			Console.WriteLine(message);
			logString += DateTime.Now.ToLongTimeString() + "> " + message + "\n";
		}

		private void RefreshRewards()
		{
			lblRewardPoints.Text = "Reward Points = " + "updating...";

			BranchIOS.GetInstance().LoadRewards(this);
		}

		#endregion

		#region UIDesigner Event Handlers

		partial void CreateBranchLink(UIButton sender)
		{
			try
			{
				universalObject = new BranchUniversalObject();
				universalObject.canonicalIdentifier = "id12345";
				universalObject.title = "id12345 title";
				universalObject.contentDescription = "My awesome piece of content!";
				universalObject.imageUrl = "https://s3-us-west-1.amazonaws.com/branchhost/mosaic_og.png";
				universalObject.metadata.Add("foo", "bar");

				linkProperties = new BranchLinkProperties();
				linkProperties.tags.Add("tag1");
				linkProperties.tags.Add("tag2");
				linkProperties.feature = "sharing";
				linkProperties.channel = "facebook";
				linkProperties.controlParams.Add("$desktop_url", "http://example.com");

				BranchIOS.getInstance().GetShortURL(this, universalObject, linkProperties);
			}
			catch (Exception e)
			{
				LogMessage(e.ToString());
			}
		}

		partial void RedeemPoints(UIButton sender)
		{
			BranchIOS.GetInstance().RedeemRewards(this, 5);
		}

		partial void SetUserID(UIButton sender)
		{
			BranchIOS.GetInstance().SetIdentity("test_user_10", this);
		}

		partial void RefreshRewards(UIButton sender)
		{
			RefreshRewards();
		}

		partial void SendBuyEvent(UIButton sender)
		{
			BranchIOS.GetInstance().UserCompletedAction("buy");
			RefreshRewards();
		}

		partial void SimulateLogout(UIButton sender)
		{
			BranchIOS.GetInstance().Logout(this);
		}

		partial void SendComplexEvent(UIButton sender)
		{
			Dictionary<string, object> parameters = new Dictionary<string, object>();
			parameters.Add("name", "Alex");
			parameters.Add("boolean", true);
			parameters.Add("int", 1);
			parameters.Add("double", 0.13415512301);

			BranchIOS.GetInstance().UserCompletedAction("buy", parameters);
			RefreshRewards();
		}

		partial void ShareLink(UIButton sender)
		{
			try
			{
				if (universalObject == null)
				{
					universalObject = new BranchUniversalObject();
					universalObject.canonicalIdentifier = "id12345";
					universalObject.title = "id12345 title";
					universalObject.contentDescription = "My awesome piece of content!";
					universalObject.imageUrl = "https://s3-us-west-1.amazonaws.com/branchhost/mosaic_og.png";
					universalObject.metadata.Add("foo", "bar");
				}

				if (linkProperties == null)
				{
					linkProperties = new BranchLinkProperties();
					linkProperties.tags.Add("tag1");
					linkProperties.tags.Add("tag2");
					linkProperties.feature = "invite";
					linkProperties.channel = "Twitter";
					linkProperties.stage = "2";
					linkProperties.controlParams.Add("$desktop_url", "http://example.com");
				}

				BranchIOS.GetInstance().ShareLink(this, universalObject, linkProperties, "hello there with short url");
			}
			catch (Exception e)
			{
				LogMessage(e.ToString());
			}
		}

		partial void ShowRewardHistory(UIButton sender)
		{
			BranchIOS.GetInstance().GetCreditHistory(this);
		}

		partial void ViewFirstReferringParams(UIButton sender)
		{
			logString = BranchIOS.GetInstance().GetFirstReferringBranchUniversalObject().ToJsonString() + "\n\n";
			logString += BranchIOS.GetInstance().GetFirstReferringBranchLinkProperties().ToJsonString();

			PerformSegue("LogPush", this);
		}

		partial void ViewLatestReferringParams(UIButton sender)
		{
			logString = BranchIOS.GetInstance().GetLastReferringBranchUniversalObject().ToJsonString() + "\n\n";
			logString += BranchIOS.GetInstance().GetLastReferringBranchLinkProperties().ToJsonString();

			PerformSegue("LogPush", this);
		}

		partial void SimulateContentAccess(UIButton sender)
		{
			if (universalObject != null)
			{
				BranchIOS.GetInstance().RegisterView(universalObject);
			}
		}

		partial void RegisterForSpotlight(UIButton sender)
		{
			if (universalObject != null)
			{
				universalObject.metadata.Add("deeplink_text", "This link was generated for Spotlight registration");
				BranchIOS.GetInstance().ListOnSpotlight(universalObject);
			}
		}

		#endregion

		#region IBranchUrlInterface

		public void ReceivedUrl(string uri)
		{
			inputShortLink.Text = uri;
			LogMessage("Branch.getShortURL url: " + uri);
		}

		public void UrlRequestError(BranchError error)
		{
			LogMessage("Branch.getShortURL failed: " + error.ErrorCode);
			LogMessage(error.ErrorMessage);
		}

		#endregion

		#region IBranchRewardInterface

		public void RewardsLoaded()
		{
			lblRewardPoints.Text = "Reward Points = " + BranchIOS.GetInstance().GetCredits().ToString();
			LogMessage("Branch.loadRewards changed: " + BranchIOS.GetInstance().GetCredits().ToString());
		}

		public void RewardsRedeemed()
		{
			lblRewardPoints.Text = "Reward Points = " + BranchIOS.GetInstance().GetCredits().ToString();
			LogMessage("Branch.loadRewards changed: " + BranchIOS.GetInstance().GetCredits().ToString());
		}

		public void CreditHistory(List<CreditHistoryEntry> history)
		{
			this.history = history;
			PerformSegue("HistoryPush", this);
		}

		public void RewardsRequestError(BranchError error)
		{
			LogMessage("Branch reward request error: " + error.ErrorCode);
			LogMessage(error.ErrorMessage);
			lblRewardPoints.Text = "Reward Points = " + "0";
		}

		#endregion

		#region IBranchIdentityInterface

		public void IdentitySet(Dictionary<string, object> data)
		{
			btnSetUserID.SetTitle("test_user_10", UIControlState.Normal);
			LogMessage("Branch.setIdentity install params: " + data.ToString());
			RefreshRewards();
		}

		public void LogoutComplete()
		{
			btnSetUserID.SetTitle("Set User ID", UIControlState.Normal);
			LogMessage("Branch.setIdentity logout success");
		}

		public void IdentityRequestError(BranchError error)
		{
			btnSetUserID.SetTitle("Set User ID", UIControlState.Normal);
			LogMessage("Branch.setIdentity failed: " + error.ErrorMessage);
		}

		#endregion

		#region IBranchLinkShareInterface

		public void ChannelSelected(string channel)
		{
			LogMessage("Branch.shareLink channel selected: " + channel);
		}

		public void LinkShareResponse(string sharedLink, string sharedChannel)
		{
			LogMessage("Branch.shareLink response from: " + sharedChannel + " " + sharedLink);
		}

		public void LinkShareRequestError(BranchError error)
		{
			LogMessage("Branch.shareLink failed: " + error.ErrorCode);
			LogMessage(error.ErrorMessage);
		}

		#endregion

		#region Segue

		public override void PrepareForSegue(UIStoryboardSegue segue, Foundation.NSObject sender)
		{
			if (segue.Identifier.Equals("LogPush"))
			{
				LogViewController logViewController = segue.DestinationViewController as LogViewController;
				logViewController.logText = logString;
			}

			if (segue.Identifier.Equals("HistoryPush"))
			{
				HistoryTableViewController historyViewController = segue.DestinationViewController as HistoryTableViewController;
				historyViewController.DataSource = history;
			}
		}

		#endregion
	}
}

