using BranchXamarinSDK;

using System;
using System.Collections.Generic;
using System.ComponentModel;

using Xamarin.Forms;

namespace BranchXamarinSDKTestbed
{
	public class TestPage : ContentPage ,
	IBranchGetUrlInterface,
	IBranchReferralInitInterface,
	IBranchReferralInterface
	{
		readonly Label SessionLabel;
		readonly Label IdentityIdLabel;
		readonly Label DeviceFingerprintIdLabel;
		readonly Label FirstLabel;
		readonly Label LatestLabel;
		readonly Entry UriLabel;
		readonly Entry TimeoutEntry;
		readonly Entry RetriesEntry;
		readonly Entry UserEntry;
		readonly Button LoginButton;
		readonly Button LogoutButton;
		readonly Button SendEmailButton;
		readonly Picker TypePicker;
		readonly Picker FeaturePicker;
		readonly Entry ChannelEntry;
		readonly Entry AliasEntry;
		readonly Entry StageEntry;
		readonly Entry TagsEntry;
		readonly Entry ParamsEntry;
		readonly Entry ActionEntry;
		readonly Button CompleteActionButton;
		readonly Button LoadActionButton;
		readonly Entry LoadActionEntry;
		readonly Label LoadActionLabel;
		readonly Label ReferralCodeLabel;

		int urlType = 0;
		string feature;

		String UriString;
		bool IsLoggedIn;

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
				Text = "Session ID:"
			};

			SessionLabel = new Label {
				TextColor = Color.Blue,
				FontSize = 18
			};

			var ILabel = new Label {
				TextColor = Color.Blue,
				FontSize = 24,
				Text = "Identity ID:"
			};

			IdentityIdLabel = new Label {
				TextColor = Color.Blue,
				FontSize = 18
			};

			var DLabel = new Label {
				TextColor = Color.Blue,
				FontSize = 24,
				Text = "Device Finger Print ID:"
			};

			DeviceFingerprintIdLabel = new Label {
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
			Dictionary<string, object> first = Branch.GetInstance ().GetFirstReferringParams ();
			if (first != null) {
				FirstLabel.Text = prettyJSON(first);
			}

			var LLabel = new Label {
				TextColor = Color.Blue,
				FontSize = 24,
				Text = "Latest Params"
			};

			LatestLabel = new Label {
				TextColor = Color.Blue,
				FontSize = 18
			};
			Dictionary<string, object> latest = Branch.GetInstance ().GetLatestReferringParams ();
			if (latest != null) {
				LatestLabel.Text = prettyJSON(latest);
			}

			var uaLabel = new Label {
				TextColor = Color.Blue,
				FontSize = 24,
				Text = "Alias"
			};

			AliasEntry = new Entry {
				TextColor = entryTextColor,
				Placeholder = "Enter an alias string"
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

			var TOLabel = new Label {
				TextColor = Color.Blue,
				Text = "Timeout for API calls in seconds",
				FontSize = 18
			};

			TimeoutEntry = new Entry {
				Text = ((int)Branch.GetInstance().Timeout.TotalSeconds).ToString (),
				TextColor = entryTextColor,
				Keyboard = Keyboard.Numeric
			};
			TimeoutEntry.TextChanged += TimeoutChanged;

			var RLabel = new Label {
				TextColor = Color.Blue,
				Text = "Number of retries before failing a web API call",
				FontSize = 18
			};

			RetriesEntry = new Entry {
				Text = ((int)Branch.GetInstance ().Retries).ToString (),
				TextColor = entryTextColor,
				Keyboard = Keyboard.Numeric
			};
			RetriesEntry.TextChanged += RetriesChanged;

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

			LoadActionButton = new Button {
				Text = "Load Action Counts",
				TextColor = Color.White,
				BackgroundColor = Color.Gray
			};
			LoadActionButton.Clicked += LoadActionClicked;

			LoadActionEntry = new Entry {
				TextColor = entryTextColor,
				Placeholder = "Enter a action to see counts"
			};
			LoadActionEntry.TextChanged += LoadActionChanged;

			LoadActionLabel = new Label {
				TextColor = Color.Blue,
				Text = "Total: 0 Unique: 0",
				FontSize = 18
			};

			Button getCodeButton = new Button {
				Text = "Get Referral Code",
				TextColor = Color.White,
				BackgroundColor = Color.Gray
			};
			getCodeButton.Clicked += GetCodeClicked;

			Button validateCodeButton = new Button {
				Text = "Validate Referral Code",
				TextColor = Color.White,
				BackgroundColor = Color.Gray
			};
			validateCodeButton.Clicked += ValidateCodeClicked;

			Button applyCodeButton = new Button {
				Text = "Apply Referral Code",
				TextColor = Color.White,
				BackgroundColor = Color.Gray
			};
			applyCodeButton.Clicked += ApplyCodeClicked;

			ReferralCodeLabel = new Label {
				TextColor = Color.Blue,
				Text = "Press button to get referral code",
				FontSize = 18
			};

			var stack1 = new StackLayout {
				Children = {
					SLabel,
					SessionLabel,
					ILabel,
					IdentityIdLabel,
					DLabel,
					DeviceFingerprintIdLabel
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
					uaLabel,
					AliasEntry,
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
					UriLabel,
					SendEmailButton
				}
			};
			var frame3 = new Frame {
				OutlineColor = Color.Black,
				Padding = new Thickness (5, 5, 5, 5),
				Content = stack3
			};

			var stack4 = new StackLayout {
				Children = {
					TOLabel,
					TimeoutEntry,
					RLabel,
					RetriesEntry
				}
			};
			var frame4 = new Frame {
				OutlineColor = Color.Black,
				Padding = new Thickness (5, 5, 5, 5),
				Content = stack4
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
					CompleteActionButton,
					LoadActionButton,
					LoadActionEntry,
					LoadActionLabel
				}
			};
			var frame6 = new Frame {
				OutlineColor = Color.Black,
				Padding = new Thickness (5, 5, 5, 5),
				Content = stack6
			};

			var stack7 = new StackLayout {
				Children = {
					getCodeButton,
					validateCodeButton,
					applyCodeButton,
					ReferralCodeLabel
				}
			};
			var frame7 = new Frame {
				OutlineColor = Color.Black,
				Padding = new Thickness (5, 5, 5, 5),
				Content = stack7
			};

			var stackLayout = new StackLayout {
				Children = {
					frame1,
					frame2,
					frame3,
					frame4,
					frame5,
					frame6,
					frame7
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

		protected override void OnAppearing ()
		{
			base.OnAppearing ();

			var current = (App)Application.Current;
			if (current.IsInit) {
				UpdateLabels ();
			} else {
				current.InitChanged += AppIsInit;
			}
		}

		async void GetUrlClicked(object sender, EventArgs e) {
			Dictionary<string, object> data = new Dictionary<string, object>();
			var paramStr = ParamsEntry.Text;
			if (!String.IsNullOrWhiteSpace (paramStr)) {
				String[] strs = paramStr.Split (',');
				int count = 1;
				foreach (String str in strs) {
					String key = "param" + count.ToString ();
					data.Add (key, str.Trim ());
					count++;
				}
			}
			data.Add ("url_creation_date", DateTime.Now.ToString ());

			List<String> array = new List<String> ();
			var tags = TagsEntry.Text;
			if (String.IsNullOrWhiteSpace (tags)) {
				array = null;
			} else {
				String[] tagStrs = tags.Split(',');
				foreach (String tag in tagStrs) {
					array.Add(tag.Trim());
				}
			}

			await Branch.GetInstance ().GetShortUrlAsync (this,
				data,
				String.IsNullOrWhiteSpace(AliasEntry.Text)?null:AliasEntry.Text,
				String.IsNullOrWhiteSpace(ChannelEntry.Text)?null:ChannelEntry.Text,
				String.IsNullOrWhiteSpace(StageEntry.Text)?null:StageEntry.Text,
				array,
				feature,
				urlType);
			}

		void SendEmailClicked(object sender, EventArgs e) {
			if (UriString != null) {
				DependencyService.Get<IEmailUrl> ().EmailUrl (UriString);
			}
		}

		void TimeoutChanged(object sender, TextChangedEventArgs e) {
			String timeoutStr = e.NewTextValue;
			int timeout;
			if (!int.TryParse (timeoutStr, out timeout)) {
				TimeoutEntry.Text = e.OldTextValue;
			} else {
				Branch.GetInstance ().Timeout = TimeSpan.FromSeconds (timeout);
				TimeoutEntry.Text = timeout.ToString (); // Make sure text matches what we stored.
			}
		}

		void RetriesChanged(object sender, TextChangedEventArgs e) {
			String retriesStr = e.NewTextValue;
			int retries;
			if (!int.TryParse (retriesStr, out retries)) {
				RetriesEntry.Text = e.OldTextValue;
			} else {
				Branch.GetInstance ().Retries = retries;
				RetriesEntry.Text = retries.ToString (); // Make sure text matches what we stored.
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

		void LoadActionChanged(object sender, TextChangedEventArgs e) {
			if (!String.IsNullOrWhiteSpace(e.NewTextValue)) {
				LoadActionLabel.Text = "Total: " +
					Branch.GetInstance().GetReferralCountsForAction(e.NewTextValue, false).ToString() +
					" Unique: " +
					Branch.GetInstance().GetReferralCountsForAction(e.NewTextValue, true).ToString();
			}
		}

		async void LoginClicked(object sender, EventArgs e) {
			await Branch.GetInstance ().Identify (UserEntry.Text, this);
			UserEntry.IsEnabled = false;
			LoginButton.IsEnabled = false;
		}

		async void LogoutClicked(object sender, EventArgs e) {
			await Branch.GetInstance ().Logout ();
			IsLoggedIn = false;
			UserEntry.IsEnabled = true;
			UserEntry.Text = "";
			LoginButton.IsEnabled = false;
			LogoutButton.IsEnabled = false;
		}

		async void CompleteActionClicked(object sender, EventArgs e) {
			// Just to test metadata
			Dictionary<string, object> data = new Dictionary<string, object> ();
			data.Add ("action_complete_date", DateTime.Now.ToString ());
			await Branch.GetInstance ().UserCompletedAction (ActionEntry.Text, data);
		}

		class CompletionCallback : IBranchCompletionCallback {
			public delegate void HandleCompletionDelegate(BranchError error);

			HandleCompletionDelegate MyDelegate;

			public CompletionCallback(HandleCompletionDelegate d) {
				MyDelegate = d;
			}

			public void RequestComplete (BranchError error)
			{
				if (MyDelegate != null) {
					MyDelegate (error);
				}
			}
		}

		async void LoadActionClicked(object sender, EventArgs e) {
			await Branch.GetInstance ().LoadReferralActionCounts (
				new CompletionCallback (delegate(BranchError error) {
					if (!String.IsNullOrWhiteSpace(LoadActionEntry.Text)) {
						LoadActionLabel.Text = "Total: " +
							Branch.GetInstance().GetReferralCountsForAction(LoadActionEntry.Text, false).ToString() +
							" Unique: " +
							Branch.GetInstance().GetReferralCountsForAction(LoadActionEntry.Text, true).ToString();
					}
				}));
		}

		async void GetCodeClicked(object sender, EventArgs e) {
			await Branch.GetInstance ().GetReferralCode (this,
				10,
				null,
				null,
				"test");
		}

		async void ValidateCodeClicked(object sender, EventArgs e) {
			await Branch.GetInstance ().ValidateReferralCode (this, ReferralCodeLabel.Text);
		}

		async void ApplyCodeClicked(object sender, EventArgs e) {
			await Branch.GetInstance ().ApplyReferralCode (this, ReferralCodeLabel.Text);
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

		void AppIsInit(object sender, PropertyChangedEventArgs args) {
			var current = (App)Application.Current;
			if (current.IsInit) {
				UpdateLabels ();
			} else {
				if (!String.IsNullOrWhiteSpace (current.Error)) {
					SessionLabel.Text = current.Error;
				}
			}
		}

		void UpdateLabels() {
			if (Session.Current != null) {
				SessionLabel.Text = Session.Current.Id;
				DeviceFingerprintIdLabel.Text = Session.Current.DeviceFingerprintId;
			}
			if (User.Current != null) {
				IdentityIdLabel.Text = User.Current.Id;
			}
			var first = Branch.GetInstance ().GetFirstReferringParams ();
			FirstLabel.Text = (first != null) ? prettyJSON (first) : "";
			var latest = Branch.GetInstance ().GetLatestReferringParams ();
			LatestLabel.Text = (latest != null) ? prettyJSON (latest) : "";
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
					ret += obj as String;
					ret += "\n";
				}
			}
			if (level > 0) {
				ret += blankString (level);
			}
			ret += "}\n";
			return ret;
		}

		#region IBranchGetUrlInterface implementation

		public void Finished (Uri uri, BranchError error)
		{
			if (uri != null) {
				UriLabel.Text = uri.ToString ();
				UriString = uri.ToString ();
				SendEmailButton.IsEnabled = true;
			} else if (error != null) {
				UriLabel.Text = error.ErrorMessage;
			}
		}

		#endregion

		#region IBranchReferralInitInterface implementation

		public void OnInitFinished (Dictionary<string, object> result, BranchError error)
		{
			if (error == null) {
				IsLoggedIn = true;
				LogoutButton.IsEnabled = true;
				LoginButton.IsEnabled = false;
				UserEntry.IsEnabled = false;
			} else {
				IsLoggedIn = false;
				LogoutButton.IsEnabled = false;
				LoginButton.IsEnabled = true;
				UserEntry.IsEnabled = true;
			}
			UpdateLabels ();
		}

		#endregion

		#region IBranchReferralInterface implementation

		public void ReferralCodeCreated (string code)
		{
			ReferralCodeLabel.Text = code;
		}

		public void ReferralCodeValidated (string code, bool valid)
		{
		}

		public void ReferralCodeApplied (string code)
		{
		}

		public void ReferralRequestError (BranchError error)
		{
			ReferralCodeLabel.Text = error.ErrorMessage;
		}

		#endregion
	}
}

