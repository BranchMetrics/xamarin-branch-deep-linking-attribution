
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Newtonsoft.Json;
using BranchXamarinSDK;

using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;

namespace Branch_Testbed_Android
{
	[Activity(Label = "BranchActivity")]
	public class BranchActivity : Activity, IBranchUrlInterface, IBranchRewardsInterface, IBranchIdentityInterface, IBranchLinkShareInterface
	{
		private BranchUniversalObject universalObject = null;
		private BranchLinkProperties linkProperties = null;
		private string logString = "";

		private EditText shortLinkText;
		private TextView rewardText;
		private Button setUserButton;

		protected override void OnCreate(Bundle savedInstanceState)
		{
			base.OnCreate(savedInstanceState);

			LogMessage("Branch initialization completed: ");

			Dictionary<string, object> data = JsonConvert.DeserializeObject<Dictionary<string, object>>(Intent.GetStringExtra("BranchData"));

			foreach (var key in data.Keys)
			{
				LogMessage(key + " : " + data[key].ToString());
			}

			SetContentView(Resource.Layout.Main);

			shortLinkText = FindViewById<EditText>(Resource.Id.linkText);
			rewardText = FindViewById<TextView>(Resource.Id.rewardText);

			Button createLinkButton = FindViewById<Button>(Resource.Id.createLinkButton);
			createLinkButton.Click += CreateLinkButton_Click;

			Button redeemButton = FindViewById<Button>(Resource.Id.redeemButton);
			redeemButton.Click += RedeemButton_Click;

			Button refreshButton = FindViewById<Button>(Resource.Id.refreshButton);
			refreshButton.Click += RefreshButton_Click;

			Button buyButton = FindViewById<Button>(Resource.Id.buyButton);
			buyButton.Click += BuyButton_Click;

			Button historyButton = FindViewById<Button>(Resource.Id.historyButton);
			historyButton.Click += HistoryButton_Click;

			setUserButton = FindViewById<Button>(Resource.Id.setUserButton);
			setUserButton.Click += SetUserButton_Click;

			Button logoutButton = FindViewById<Button>(Resource.Id.logoutButton);
			logoutButton.Click += LogoutButton_Click;

			Button sendEventButton = FindViewById<Button>(Resource.Id.sendEventButton);
			sendEventButton.Click += SendEventButton_Click;

			Button shareButton = FindViewById<Button>(Resource.Id.shareButton);
			shareButton.Click += ShareButton_Click;

			Button firstParamsButton = FindViewById<Button>(Resource.Id.firstParamsButton);
			firstParamsButton.Click += FirstParamsButton_Click;

			Button lastParamsButton = FindViewById<Button>(Resource.Id.lastParamsButton);
			lastParamsButton.Click += LastParamsButton_Click;

			Button contentAccessButton = FindViewById<Button>(Resource.Id.contentAccessButton);
			contentAccessButton.Click += ContentAccessButton_Click;

			Button spotlightButton = FindViewById<Button>(Resource.Id.spotlightButton);
			spotlightButton.Click += SpotlightButton_Click;

			Button logButton = FindViewById<Button>(Resource.Id.logButton);
			logButton.Click += LogButton_Click;
		}

		#region Utils

		void LogMessage(string message)
		{
			Console.WriteLine(message);
			logString += DateTime.Now.ToLongTimeString() + "> " + message + "\n";
		}

		private void RefreshRewards()
		{
			rewardText.Text = "Reward Points = " + "updating...";

			BranchAndroid.GetInstance().LoadRewards(this);
		}

		#endregion

		#region Event Handlers

		void CreateLinkButton_Click(object sender, EventArgs e)
		{
			try
			{
				universalObject = new BranchUniversalObject();
				universalObject.canonicalIdentifier = "id12345";
				universalObject.title = "id12345 title";
				universalObject.contentDescription = "My awesome piece of content!";
				universalObject.imageUrl = "https://s3-us-west-1.amazonaws.com/branchhost/mosaic_og.png";
				universalObject.metadata.Metadata.Add("foo", "bar");

				linkProperties = new BranchLinkProperties();
				linkProperties.tags.Add("tag1");
				linkProperties.tags.Add("tag2");
				linkProperties.feature = "sharing";
				linkProperties.channel = "facebook";
				linkProperties.controlParams.Add("$desktop_url", "http://example.com");

				BranchAndroid.GetInstance().GetShortURL(this, universalObject, linkProperties);
			}
			catch (Exception exc)
			{
				LogMessage(exc.ToString());
			}
		}

		void RedeemButton_Click(object sender, EventArgs e)
		{
			BranchAndroid.GetInstance().RedeemRewards(this, 5);
		}

		void RefreshButton_Click(object sender, EventArgs e)
		{
			RefreshRewards();
		}

		void BuyButton_Click(object sender, EventArgs e)
		{
			BranchAndroid.GetInstance().UserCompletedAction("buy");
			RefreshRewards();
		}

		void HistoryButton_Click(object sender, EventArgs e)
		{
			BranchAndroid.GetInstance().GetCreditHistory(this);
		}

		void SetUserButton_Click(object sender, EventArgs e)
		{
			BranchAndroid.GetInstance().SetIdentity("test_user_10", this);
		}

		void LogoutButton_Click(object sender, EventArgs e)
		{
			BranchAndroid.GetInstance().Logout(this);
		}

		void SendEventButton_Click(object sender, EventArgs e)
		{
			Dictionary<string, object> parameters = new Dictionary<string, object>();
			parameters.Add("name", "Alex");
			parameters.Add("boolean", true);
			parameters.Add("int", 1);
			parameters.Add("double", 0.13415512301);

			BranchAndroid.GetInstance().UserCompletedAction("buy", parameters);
			RefreshRewards();
		}

		void ShareButton_Click(object sender, EventArgs e)
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
					universalObject.metadata.Metadata.Add("foo", "bar");
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

				BranchAndroid.GetInstance().ShareLink(this, universalObject, linkProperties, "hello there with short url");
			}
			catch (Exception exc)
			{
				LogMessage(exc.ToString());
			}
		}

		void FirstParamsButton_Click(object sender, EventArgs e)
		{
			logString = BranchAndroid.GetInstance().GetFirstReferringBranchUniversalObject().ToJsonString() + "\n\n";
			logString += BranchAndroid.GetInstance().GetFirstReferringBranchLinkProperties().ToJsonString();

			TransitToLog();
		}

		void LastParamsButton_Click(object sender, EventArgs e)
		{
			logString = BranchAndroid.GetInstance().GetLastReferringBranchUniversalObject().ToJsonString() + "\n\n";
			logString += BranchAndroid.GetInstance().GetLastReferringBranchLinkProperties().ToJsonString();

			TransitToLog();
		}

		void ContentAccessButton_Click(object sender, EventArgs e)
		{
			if (universalObject != null)
			{
				BranchAndroid.GetInstance().RegisterView(universalObject);
			}
		}

		void SpotlightButton_Click(object sender, EventArgs e)
		{
			if (universalObject != null)
			{
				universalObject.metadata.Metadata.Add("deeplink_text", "This link was generated for Spotlight registration");
				BranchAndroid.GetInstance().ListOnSpotlight(universalObject);
			}
		}

		void LogButton_Click(object sender, EventArgs e)
		{
			TransitToLog();
		}

		#endregion

		void TransitToLog()
		{
			var intent = new Intent(this, typeof(LogActivity));
			intent.PutExtra("LogString", logString);
			StartActivity(intent);
		}

		#region IBranchUrlInterface

		public void ReceivedUrl(string uri)
		{
			shortLinkText.Text = uri;
			LogMessage("Branch.getShortURL url: " + uri);
		}

		public void UrlRequestError(BranchError error)
		{
			LogMessage("Branch.getShortURL failed: " + error.ErrorCode);
			LogMessage(error.ErrorMessage);
		}

		#endregion

		#region IBranchRewardsInterface

		public void RewardsLoaded()
		{
			rewardText.Text = "Reward Points = " + BranchAndroid.GetInstance().GetCredits().ToString();
			LogMessage("Branch.loadRewards changed: " + BranchAndroid.GetInstance().GetCredits().ToString());
		}

		public void RewardsRedeemed()
		{
			rewardText.Text = "Reward Points = " + BranchAndroid.GetInstance().GetCredits().ToString();
			LogMessage("Branch.loadRewards changed: " + BranchAndroid.GetInstance().GetCredits().ToString());
		}

		public void CreditHistory(List<CreditHistoryEntry> history)
		{
			var intent = new Intent(this, typeof(HistoryActivity));
			var json = JsonConvert.SerializeObject(history);
			intent.PutExtra("HistoryArray", json);
			StartActivity(intent);
		}

		public void RewardsRequestError(BranchError error)
		{
			LogMessage("Branch reward request error: " + error.ErrorCode);
			LogMessage(error.ErrorMessage);
			rewardText.Text = "Reward Points = " + "0";
		}

		#endregion

		#region IBranchIdentityInterface

		public void IdentitySet(Dictionary<string, object> data)
		{
			setUserButton.Text = "test_user_10";
			LogMessage("Branch.setIdentity install params: " + data.ToString());
			RefreshRewards();
		}

		public void LogoutComplete()
		{
			setUserButton.Text = "Set User ID";
			LogMessage("Branch.setIdentity logout success");
		}

		public void IdentityRequestError(BranchError error)
		{
			setUserButton.Text = "Set User ID";
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

	}
}
