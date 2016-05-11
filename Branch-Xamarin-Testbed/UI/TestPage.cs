using BranchXamarinSDK;

using System;
using System.Collections.Generic;
using System.ComponentModel;

using Xamarin.Forms;

namespace BranchXamarinTestbed
{
	public class TestPage : ContentPage ,
	IBranchUrlInterface,
	IBranchSessionInterface,
	IBranchIdentityInterface,
	IBranchRewardsInterface
	{
		readonly Label StatusLabel;
		readonly Label FirstLabel;
		readonly Label LatestLabel;
		readonly Entry UriLabel;
		readonly Entry UserEntry;
		readonly Button LoginButton;
		readonly Button LogoutButton;
		readonly Button SendEmailButton;
		readonly Picker TypePicker;
		readonly Picker FeaturePicker;
		readonly Entry ChannelEntry;
		readonly Entry StageEntry;
		readonly Entry TagsEntry;
		readonly Entry ParamsEntry;
		readonly Entry ActionEntry;
		readonly Button CompleteActionButton;
		readonly Label CreditsLabel;
		readonly Entry RedeemEntry;
		readonly Button RedeemButton;
		readonly Entry CreditBucketEntry;
		readonly StackLayout HistoryStack;

		int urlType = 0;
		string feature = "";

		String UriString = "";
		bool IsLoggedIn = false;

		Color entryTextColor = Color.Black;

		public TestPage ()
		{
			BackgroundColor = Color.FromHex ("C0C0C0");
			NavigationPage.SetHasNavigationBar (this, false);

			if (Device.OS == TargetPlatform.Android) {
				entryTextColor = Color.White;
			}

			var SLabel = new Label {
				TextColor = Color.Blue,
				FontSize = 24,
				Text = "Status:"
			};

			StatusLabel = new Label {
				TextColor = Color.Blue,
				FontSize = 18
			};

			var FLabel = new Label {
				TextColor = Color.Blue,
				FontSize = 24,
				Text = "First Params:"
			};

			FirstLabel = new Label {
				TextColor = Color.Blue,
				FontSize = 18
			};

			var LLabel = new Label {
				TextColor = Color.Blue,
				FontSize = 24,
				Text = "Latest Params"
			};

			LatestLabel = new Label {
				TextColor = Color.Blue,
				FontSize = 18
			};

			var ucLabel = new Label {
				TextColor = Color.Blue,
				FontSize = 24,
				Text = "Channel"
			};

			ChannelEntry = new Entry {
				TextColor = entryTextColor,
				Placeholder = "Enter a channel string"
			};

			var usLabel = new Label {
				TextColor = Color.Blue,
				FontSize = 24,
				Text = "Stage"
			};

			StageEntry = new Entry {
				TextColor = entryTextColor,
				Placeholder = "Enter a stage string"
			};

			var utagsLabel = new Label {
				TextColor = Color.Blue,
				FontSize = 24,
				Text = "Tags (use , to seperate multiple tags)"
			};

			TagsEntry = new Entry {
				TextColor = entryTextColor,
				Placeholder = "Enter one or more tags"
			};

			var upLabel = new Label {
				TextColor = Color.Blue,
				FontSize = 24,
				Text = "Params" +
					" (Use a comma seperated list to add values for keys \"param1\", \"param2\" through \"paramN\".)"
			};

			ParamsEntry = new Entry {
				TextColor = entryTextColor,
				Placeholder = "Enter params"
			};

			var utLabel = new Label {
				TextColor = Color.Blue,
				FontSize = 24,
				Text = "URL Type"
			};

			TypePicker = new Picker {
				Title = "Unlimited",
				VerticalOptions = LayoutOptions.CenterAndExpand,
				SelectedIndex = 0,
				Items = { "Unlimited", "Single Use" }
			};
			TypePicker.SelectedIndexChanged += TypeSelected;

			var ufLabel = new Label {
				TextColor = Color.Blue,
				FontSize = 24,
				Text = "URL Feature"
			};

			FeaturePicker = new Picker {
				Title = "None",
				VerticalOptions = LayoutOptions.CenterAndExpand,
				SelectedIndex = 0,
				Items = { "None", "Share", "Referral", "Invite", "Deal", "Gift" }
			};
			FeaturePicker.SelectedIndexChanged += FeatureSelected;

			UriLabel = new Entry {
				TextColor = entryTextColor,
				Text = "Press button to generate a URL"
			};

			var getUrlButton = new Button {
				Text = "Get URL",
				BackgroundColor = Color.Gray,
				TextColor = Color.White
			};
			getUrlButton.Clicked += GetUrlClicked;

			SendEmailButton = new Button {
				Text = "Send URL in Email",
				IsEnabled = false,
				BackgroundColor = Color.Gray,
				TextColor = Color.White
			};
			SendEmailButton.Clicked += SendEmailClicked;

			var UNLabel = new Label {
				TextColor = Color.Blue,
				Text = "Username to login",
				FontSize = 18
			};

			UserEntry = new Entry {
				Placeholder = "Username",
				TextColor = entryTextColor,
				Keyboard = Keyboard.Create(KeyboardFlags.CapitalizeSentence)
			};
			UserEntry.TextChanged += UserChanged;

			LoginButton = new Button {
				Text = "Login User",
				TextColor = Color.White,
				BackgroundColor = Color.Gray,
				IsEnabled = false
			};
			LoginButton.Clicked += LoginClicked;

			LogoutButton = new Button {
				Text = "Logout User",
				TextColor = Color.White,
				BackgroundColor = Color.Gray,
				IsEnabled = false
			};
			LogoutButton.Clicked += LogoutClicked;

			var caLabel = new Label {
				TextColor = Color.Blue,
				Text = "Action",
				FontSize = 18
			};

			ActionEntry = new Entry {
				TextColor = entryTextColor,
				Placeholder = "Action"
			};
			ActionEntry.TextChanged += ActionChanged;

			CompleteActionButton = new Button {
				Text = "User Completed Action",
				TextColor = Color.White,
				BackgroundColor = Color.Gray,
				IsEnabled = false
			};
			CompleteActionButton.Clicked += CompleteActionClicked;

			var loadRewardsButton = new Button {
				Text = "Load Rewards",
				TextColor = Color.White,
				BackgroundColor = Color.Gray
			};
			loadRewardsButton.Clicked += LoadRewardsClicked;

			CreditBucketEntry = new Entry {
				TextColor = entryTextColor,
				Placeholder = "Enter a bucket name to show credits for that bucket"
			};
			CreditBucketEntry.TextChanged += BucketChanged;

			CreditsLabel = new Label {
				TextColor = Color.Blue,
				Text = "Press button to get credit count",
				FontSize = 18
			};

			RedeemEntry = new Entry {
				TextColor = entryTextColor,
				Placeholder = "Enter a number of credits to redeem",
				Keyboard = Keyboard.Numeric
			};
			RedeemEntry.TextChanged += RedeemChanged;

			RedeemButton = new Button {
				Text = "Redeem Rewards",
				TextColor = Color.White,
				BackgroundColor = Color.Gray,
				IsEnabled = false
			};
			RedeemButton.Clicked += RedeemClicked;

			var historyButton = new Button {
				Text = "Get Credit History",
				TextColor = Color.White,
				BackgroundColor = Color.Gray
			};
			historyButton.Clicked += GetCreditHistoryClicked;

			HistoryStack = new StackLayout {
				Padding = 5
			};

			var stack1 = new StackLayout {
				Children = {
					SLabel,
					StatusLabel
				}
			};
			var frame1 = new Frame {
				OutlineColor = Color.Black,
				Padding = new Thickness (5, 5, 5, 5),
				Content = stack1
			};

			var stack2 = new StackLayout {
				Children = {
					FLabel,
					FirstLabel,
					LLabel,
					LatestLabel
				}
			};
			var frame2 = new Frame {
				OutlineColor = Color.Black,
				Padding = new Thickness (5, 5, 5, 5),
				Content = stack2
			};

			var stack3 = new StackLayout {
				Children = {
					ucLabel,
					ChannelEntry,
					usLabel,
					StageEntry,
					utagsLabel,
					TagsEntry,
					upLabel,
					ParamsEntry,
					utLabel,
					TypePicker,
					ufLabel,
					FeaturePicker,
					getUrlButton,
					UriLabel
//					SendEmailButton
				}
			};
			var frame3 = new Frame {
				OutlineColor = Color.Black,
				Padding = new Thickness (5, 5, 5, 5),
				Content = stack3
			};

			var stack5 = new StackLayout {
				Children = {
					UNLabel,
					UserEntry,
					LoginButton,
					LogoutButton
				}
			};

			var frame5 = new Frame {
				OutlineColor = Color.Black,
				Padding = new Thickness (5, 5, 5, 5),
				Content = stack5
			};

			var stack6 = new StackLayout {
				Children = {
					caLabel,
					ActionEntry,
					CompleteActionButton
				}
			};
			var frame6 = new Frame {
				OutlineColor = Color.Black,
				Padding = new Thickness (5, 5, 5, 5),
				Content = stack6
			};

			var stack8 = new StackLayout {
				Children = {
					loadRewardsButton,
					CreditBucketEntry,
					CreditsLabel,
					RedeemEntry,
					RedeemButton,
					historyButton,
					HistoryStack
				}
			};
			var frame8 = new Frame {
				OutlineColor = Color.Black,
				Padding = new Thickness (5, 5, 5, 5),
				Content = stack8
			};

			var stackLayout = new StackLayout {
				Children = {
					frame1,
					frame2,
					frame3,
					frame5,
					frame6,
					frame8
				},
				Spacing = 10,
				Padding = 10
			};

			var sv = new ScrollView {
				Orientation = ScrollOrientation.Vertical,
				Content = stackLayout
			};

			Content = sv;
		}


		void GetUrlClicked(object sender, EventArgs e) {
			var data = new Dictionary<string, object>();
			var paramStr = ParamsEntry.Text;

			if (!String.IsNullOrWhiteSpace (paramStr)) {
				String[] strs = paramStr.Split (',');
				int count = 1;
				foreach (String str in strs) {
					String key = "param" + count;
					data.Add (key, str.Trim ());
					count++;
				}
			}

			data.Add ("url_creation_date", DateTime.Now.ToString ());

			var array = new List<String> ();
			var tags = TagsEntry.Text;
			if (!String.IsNullOrWhiteSpace (tags)) {
				String[] tagStrs = tags.Split(',');
				foreach (String tag in tagStrs) {
					array.Add(tag.Trim());
				}
			}

			Branch.GetInstance ().GetShortUrl (this,
				urlType,
				data,
				String.IsNullOrWhiteSpace(ChannelEntry.Text) ? "" : ChannelEntry.Text,
				String.IsNullOrWhiteSpace(StageEntry.Text) ? "" : StageEntry.Text,
				array,
				feature);
		}

		void SendEmailClicked(object sender, EventArgs e) {
			if (UriString != null) {
//				DependencyService.Get<IEmailUrl> ().EmailUrl (UriString);
			}
		}
			
		void UserChanged(object sender, TextChangedEventArgs e) {
			if (IsLoggedIn) {
				UserEntry.Text = e.OldTextValue;
			} else {
				LoginButton.IsEnabled = !String.IsNullOrWhiteSpace (e.NewTextValue);
			}
		}

		void ActionChanged(object sender, TextChangedEventArgs e) {
			CompleteActionButton.IsEnabled = !String.IsNullOrWhiteSpace (e.NewTextValue);
		}

		void BucketChanged(object sender, TextChangedEventArgs e) {
			String bucket = "default";
			if (!String.IsNullOrWhiteSpace (e.NewTextValue)) {
				bucket = e.NewTextValue;
			}

			CreditsLabel.Text = "Credits: " +
				Branch.GetInstance ().GetCreditsForBucket (bucket);
		}
			
		void RedeemChanged(object sender, TextChangedEventArgs e) {
			RedeemButton.IsEnabled = !String.IsNullOrWhiteSpace (e.NewTextValue);
		}
			
		void LoginClicked(object sender, EventArgs e) {
			Branch.GetInstance ().SetIdentity (UserEntry.Text, this);
			UserEntry.IsEnabled = false;
			LoginButton.IsEnabled = false;
		}

		void LogoutClicked(object sender, EventArgs e) {
			Branch.GetInstance ().Logout ();
			IsLoggedIn = false;
			UserEntry.IsEnabled = true;
			UserEntry.Text = "";
			LoginButton.IsEnabled = false;
			LogoutButton.IsEnabled = false;
		}

		void CompleteActionClicked(object sender, EventArgs e) {
			// Just to test metadata
			var data = new Dictionary<string, object> ();
			data.Add ("action_complete_date", DateTime.Now.ToString ());
			Branch.GetInstance ().UserCompletedAction (ActionEntry.Text, data);
		}
						
		void LoadRewardsClicked(object sender, EventArgs e) {
			Branch.GetInstance ().LoadRewards (this);
		}

		void RedeemClicked(object sender, EventArgs e) {
			int amount = int.Parse (RedeemEntry.Text);
			string bucket = "default";
			if (!String.IsNullOrWhiteSpace (CreditBucketEntry.Text)) {
				bucket = CreditBucketEntry.Text;
			}

			Branch.GetInstance ().RedeemRewards (this, amount, bucket);
		}

		void GetCreditHistoryClicked(object sender, EventArgs e) {
			string bucket = "default";
			if (!String.IsNullOrWhiteSpace (CreditBucketEntry.Text)) {
				bucket = CreditBucketEntry.Text;
			}

			Branch.GetInstance ().GetCreditHistory (this, bucket);
		}

		void TypeSelected(object sender, EventArgs args) {
			switch (TypePicker.SelectedIndex) {
			case 0:
				urlType = Constants.URL_TYPE_UNLIMITED;
				break;
			case 1:
				urlType = Constants.URL_TYPE_SINGLE_USE;
				break;
			default:
				urlType = Constants.URL_TYPE_UNLIMITED;
				break;
			}
		}

		void FeatureSelected(object sender, EventArgs args) {
			switch (FeaturePicker.SelectedIndex) {
			case 1:
				feature = Constants.URL_FEATURE_SHARE;
				break;
			case 2:
				feature = Constants.URL_FEATURE_REFERRAL;
				break;
			case 3:
				feature = Constants.URL_FEATURE_INVITE;
				break;
			case 4:
				feature = Constants.URL_FEATURE_DEAL;
				break;
			case 5:
				feature = Constants.URL_FEATURE_GIFT;
				break;
			default:
				feature = null;
				break;
			}
		}


		String prettyJSON(Dictionary<string, object> data) {
			return prettyJSON (1, data);
		}

		static String blankString(int level) {
			String ret = "";
			for (int i = 0; i < level; i++) {
				ret += "  ";
			}
			return ret;
		}

		// For recursion...
		String prettyJSON(int level, Dictionary<string, object> data) {
			String ret = "";
			if (level > 0) {
				ret += blankString(level);
			}
			ret += "{\n";
			foreach (string key in data.Keys) {
				object obj;
				data.TryGetValue (key, out obj);
				var value = obj as Dictionary<string, object>;
				if (value != null) {
					ret += prettyJSON (level + 1, value);
				} else {
					ret += blankString (level + 1);
					ret += key;
					ret += " : ";
					ret += obj.ToString();
					ret += "\n";
				}
			}
			if (level > 0) {
				ret += blankString (level);
			}
			ret += "}\n";
			return ret;
		}

		#region IBranchUrlInterface implementation

		public void ReceivedUrl (string uri)
		{
			StatusLabel.Text = "ReceivedUrl";
			UriLabel.Text = uri;
			UriString = uri;
			SendEmailButton.IsEnabled = true;
		}

		public void UrlRequestError (BranchError error)
		{
			UriLabel.Text = error.ErrorMessage;
			StatusLabel.Text = error.ErrorMessage;
		}

		#endregion

		#region IBranchSessionInterface implementation

		public void InitSessionComplete (Dictionary<string, object> data)
		{
			StatusLabel.Text = "InitSessionComplete";

			var first = Branch.GetInstance ().GetFirstReferringParams ();
			FirstLabel.Text = (first != null) ? prettyJSON (first) : "";

			var latest = Branch.GetInstance ().GetLastReferringParams ();
			LatestLabel.Text = (latest != null) ? prettyJSON (latest) : "";
		}

		public void CloseSessionComplete ()
		{
			StatusLabel.Text = "CloseSessionComplete";
		}

		public void SessionRequestError (BranchError error)
		{
			StatusLabel.Text = error.ErrorMessage;
		}

		#endregion

		#region IBranchIdentityInterface implementation

		public void IdentitySet (Dictionary<string, object> data)
		{
			StatusLabel.Text = "IdentitySet";
			IsLoggedIn = true;
			LogoutButton.IsEnabled = true;
			LoginButton.IsEnabled = false;
			UserEntry.IsEnabled = false;
		}

		public void LogoutComplete ()
		{
			StatusLabel.Text = "LogoutComplete";
			IsLoggedIn = false;
			LogoutButton.IsEnabled = false;
			LoginButton.IsEnabled = false;
			UserEntry.Text = "";
			UserEntry.IsEnabled = true;
		}

		public void IdentityRequestError (BranchError error) {
			IsLoggedIn = false;
			LogoutButton.IsEnabled = false;
			LoginButton.IsEnabled = false;
			UserEntry.IsEnabled = true;
			StatusLabel.Text = error.ErrorMessage;
		}

		#endregion

		#region IBranchRewardsInterface implementation

		public void RewardsLoaded ()
		{
			StatusLabel.Text = "RewardsLoaded";
			String bucket = "default";
			if (!String.IsNullOrWhiteSpace(CreditBucketEntry.Text)) {
				bucket = CreditBucketEntry.Text;
			}
			CreditsLabel.Text = "Credit: " + Branch.GetInstance ().GetCreditsForBucket (bucket);
		}

		public void RewardsRedeemed ()
		{
			StatusLabel.Text = "RewardsRedeemed";
		}

		public void CreditHistory (List<CreditHistoryEntry> history)
		{
			StatusLabel.Text = "CreditHistory";
			while (HistoryStack.Children.Count > 0) {
				HistoryStack.Children.RemoveAt(0);
			}
			foreach (var ch in history) {
				Label che = new Label {
					TextColor = Color.Black,
					FontSize = 20
				};
				che.Text = ch.transaction.date + " Amount: " + ch.transaction.amount + " in " + ch.transaction.bucket;
				HistoryStack.Children.Add(che);
			}
		}

		public void RewardsRequestError (BranchError error)
		{
			StatusLabel.Text = error.ErrorMessage;
		}

		#endregion
	}
}

