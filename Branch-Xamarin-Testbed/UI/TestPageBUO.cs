using BranchXamarinSDK;

using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.IO;
using Xamarin.Forms;
using Xamarin.Forms.PlatformConfiguration;

namespace BranchXamarinTestbed
{
	public class TestPageBUO : ContentPage ,
	IBranchUrlInterface,
	IBranchBUOSessionInterface,
	IBranchIdentityInterface,
	IBranchLinkShareInterface,
	IBranchQRCodeInterface
	{
		readonly Label StatusLabel;
		readonly Label FirstLabel;
		readonly Label LatestLabel;
		readonly Entry UriLabel;
		readonly Entry UserEntry;
		readonly Button LoginButton;
		readonly Button LogoutButton;
		readonly Button ShareLinkButton;
		readonly Picker FeaturePicker;
		readonly Entry ChannelEntry;
		readonly Entry StageEntry;
		readonly Entry TagsEntry;
		readonly Entry ParamsEntry;
		readonly Entry ActionEntry;
		readonly Button CompleteActionButton;
        readonly Button QRCodeButton;
		readonly Image qrImage;

        string feature = "";
		bool IsLoggedIn = false;

		Color entryTextColor = Color.Gray;

		BranchUniversalObject universalObject = null;
		BranchLinkProperties linkProperties = null;

		public TestPageBUO ()
		{
			BackgroundColor = Color.FromHex ("C0C0C0");
			NavigationPage.SetHasNavigationBar (this, false);

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
				Text = "Universal Object:"
			};

			FirstLabel = new Label {
				TextColor = Color.Blue,
				FontSize = 18
			};

			var LLabel = new Label {
				TextColor = Color.Blue,
				FontSize = 24,
				Text = "Link Properties:"
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

			ShareLinkButton = new Button {
				Text = "Share URL",
				IsEnabled = false,
				BackgroundColor = Color.Gray,
				TextColor = Color.White
			};
			ShareLinkButton.Clicked += ShareLinkClicked;

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


            var qrLabel = new Label
            {
                TextColor = Color.Blue,
                Text = "QR Code",
                FontSize = 18
            };

			qrImage = new Image
			{
				Source = "https://t4.ftcdn.net/jpg/03/24/10/93/360_F_324109330_f2P2ohY4fYETjXCrjHLzZaLTho9cYBV4.jpg"
            };

            QRCodeButton = new Button
            {
                Text = "Create QR Code",
                TextColor = Color.White,
                BackgroundColor = Color.Gray,
            };
            QRCodeButton.Clicked += QRCodeClicked;

            var stack1 = new StackLayout {
				Children = {
					SLabel,
					StatusLabel
				}
			};
			var frame1 = new Frame {
                BorderColor = Color.Black,
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
                BorderColor = Color.Black,
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
					ufLabel,
					FeaturePicker,
					getUrlButton,
					UriLabel,
					ShareLinkButton
				}
			};
			var frame3 = new Frame {
                BorderColor = Color.Black,
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
                BorderColor = Color.Black,
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
                BorderColor = Color.Black,
				Padding = new Thickness (5, 5, 5, 5),
				Content = stack6
			};

            var stack7 = new StackLayout
            {
                Children = {
                    qrLabel,
                    qrImage,
                    QRCodeButton
                }
            };
            var frame7 = new Frame
            {
                BorderColor = Color.Black,
                Padding = new Thickness(5, 5, 5, 5),
                Content = stack7
            };


            var stackLayout = new StackLayout {
				Children = {
					frame1,
					frame2,
					frame3,
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


		void GetUrlClicked(object sender, EventArgs e) {

			universalObject = new BranchUniversalObject ();
            universalObject.canonicalIdentifier = "id12345";
            universalObject.canonicalUrl = "https://branch.io";
            universalObject.title = "id12345 title";
            universalObject.contentDescription = "My awesome piece of content!";
            universalObject.imageUrl = "https://s3-us-west-1.amazonaws.com/branchhost/mosaic_og.png";
            universalObject.contentIndexMode = 0;
            universalObject.localIndexMode = 0;
            universalObject.expirationDate = new DateTime(2020, 12, 30);
            universalObject.keywords.Add("keyword01");
            universalObject.keywords.Add("keyword02");

            universalObject.metadata.contentSchema = BranchContentSchema.COMMERCE_BUSINESS;
            universalObject.metadata.quantity = 100f;
            universalObject.metadata.price = 1000f;
            universalObject.metadata.currencyType = BranchCurrencyType.USD;
            universalObject.metadata.sku = "my_sku";
            universalObject.metadata.productName = "my_product_name";
            universalObject.metadata.productBrand = "my_product_brand";
            universalObject.metadata.productCategory = BranchProductCategory.BUSINESS_AND_INDUSTRIAL;
            universalObject.metadata.condition = BranchCondition.EXCELLENT;
            universalObject.metadata.productVariant = "my_product_variant";

            universalObject.metadata.setAddress("my_street", "my_city", "my_region", "my_comuntry", "my_postal_code");
            universalObject.metadata.setLocation(40.0f, 40.0f);
            universalObject.metadata.setRating(4.0f, 5.0f, 10);

            universalObject.metadata.AddImageCaption("https://s3-us-west-1.amazonaws.com/branchhost/mosaic_og.png");
            universalObject.metadata.AddCustomMetadata("foo", "bar");

			// register a view to add to the index
			Branch.GetInstance().RegisterView(universalObject);

			var paramStr = ParamsEntry.Text;
			if (!String.IsNullOrWhiteSpace (paramStr)) {
				String[] strs = paramStr.Split (',');
				int count = 1;
				foreach (String str in strs) {
					String key = "param" + count;

                    universalObject.metadata.AddCustomMetadata (key, str.Trim ());
					count++;
				}
			}

			linkProperties = new BranchLinkProperties();
			linkProperties.feature = feature;
			linkProperties.channel = ChannelEntry.Text;
			linkProperties.stage = StageEntry.Text;
			linkProperties.controlParams.Add("$desktop_url", "http://example.com");
			linkProperties.tags = new List<string>();
			linkProperties.tags.Add("tag01");
			linkProperties.tags.Add("tag02");
			linkProperties.tags.Add("tag03");

			var tags = TagsEntry.Text;
			if (!String.IsNullOrWhiteSpace (tags)) {
				String[] tagStrs = tags.Split(',');
				foreach (String tag in tagStrs) {
					linkProperties.tags.Add(tag.Trim());
				}
			}

			Branch.GetInstance ().GetShortURL (this, universalObject, linkProperties);


            BranchEvent branchEvent = new BranchEvent("MY_CUSTOM_EVENT");
            branchEvent.SetAffiliation("my_affilation");
            branchEvent.SetCoupon("my_coupon");
            branchEvent.SetCurrency(BranchCurrencyType.USD);
            branchEvent.SetTax(10.0f);
            branchEvent.SetRevenue(100.0f);
            branchEvent.SetShipping(1000.0f);
            branchEvent.SetDescription("my_description");
            branchEvent.SetSearchQuery("my_search_query");
            branchEvent.AddCustomData("custom_data_key01", "custom_data_value01");
            branchEvent.AddContentItem(universalObject);

            Branch.GetInstance().SendEvent(branchEvent);
		}

		void ShareLinkClicked(object sender, EventArgs e) {
			if (universalObject != null) {

				Branch.GetInstance ().ShareLink (this, universalObject, linkProperties, "");
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

        void QRCodeClicked(object sender, EventArgs e)
        {
            universalObject = new BranchUniversalObject();
            universalObject.canonicalIdentifier = "qrTest1";

            linkProperties = new BranchLinkProperties();
            linkProperties.feature = feature;

            BranchQRCodeSettings qrCodeSettings = new BranchQRCodeSettings();
            qrCodeSettings.margin = 2;
            qrCodeSettings.width = 500;
            qrCodeSettings.codeColor = "#38d6a7";
            qrCodeSettings.backgroundColor = "#281fc6";
			qrCodeSettings.backgroundImageUrl = "https://cdn.logo.com/hotlink-ok/logo-social.png";
			qrCodeSettings.backgroundImageOpacity = 20;
			qrCodeSettings.codePattern = BranchQRCodeSettings.CodePattern.Circles;
			qrCodeSettings.finderEyeColor = "#38d6a7";

            Branch.GetInstance().GetQRCode(this, qrCodeSettings, universalObject, linkProperties);
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
				} else if (obj != null) {
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
			ShareLinkButton.IsEnabled = true;
		}

		public void UrlRequestError (BranchError error)
		{
			UriLabel.Text = error.ErrorMessage;
			StatusLabel.Text = error.ErrorMessage;
		}

		#endregion

		#region IBranchLinkShareInterface implementation

		public void ChannelSelected (string channel) {
			StatusLabel.Text = "ChannelSelected: " + channel;
		}

		public void LinkShareResponse (string sharedLink, string sharedChannel) {
			StatusLabel.Text = "SharedLink: " + sharedLink + "  SharedChannel: " + sharedChannel;
		}

		public void LinkShareRequestError(BranchError error) {
			StatusLabel.Text = error.ErrorMessage;
		}

		#endregion

		#region IBranchBUOSessionInterface implementation

		public void InitSessionComplete(BranchUniversalObject buo, BranchLinkProperties blp) {
			StatusLabel.Text = "InitBUOSessionComplete";

			var first = buo.ToDictionary();
			FirstLabel.Text = (first != null) ? buo.ToJsonString() : "";

			var latest = blp.ToDictionary();
			LatestLabel.Text = (latest != null) ? blp.ToJsonString() : "";
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

        #region IBranchQRCodeInterface implementation

        void IBranchQRCodeInterface.ReceivedQRCode(byte[] qrCode)
        {
			Debug.WriteLine("Got QR Code!");

			qrImage.Source = ImageSource.FromStream(() =>
            {
                return new MemoryStream(qrCode);
            });
        }

        void IBranchQRCodeInterface.QRCodeRequestError(BranchError error)
        {
			Debug.WriteLine("Error getting QR Code");

        }

        #endregion

    }
}

