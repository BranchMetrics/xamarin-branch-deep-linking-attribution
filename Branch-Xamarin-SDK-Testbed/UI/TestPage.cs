using BranchXamarinSDK;

using System;
using System.Collections.Generic;
using System.ComponentModel;

using Xamarin.Forms;

namespace BranchXamarinSDKTestbed
{
	public class TestPage : ContentPage , IBranchGetUrlInterface
	{
		Label SessionLabel;
		Label IdentityIdLabel;
		Label DeviceFingerprintIdLabel;
		Label FirstLabel;
		Label LatestLabel;
		Entry UriLabel;

		String UriString;

		Button SendEmailButton;

		public TestPage ()
		{
			BackgroundColor = Color.White;
			NavigationPage.SetHasNavigationBar (this, false);

			Label SLabel = new Label () {
				TextColor = Color.Blue,
				FontSize = 24,
				Text = "Session ID:"
			};

			SessionLabel = new Label () {
				TextColor = Color.Blue,
				FontSize = 18
			};

			Label ILabel = new Label () {
				TextColor = Color.Blue,
				FontSize = 24,
				Text = "Identity ID:"
			};

			IdentityIdLabel = new Label () {
				TextColor = Color.Blue,
				FontSize = 18
			};

			Label DLabel = new Label () {
				TextColor = Color.Blue,
				FontSize = 24,
				Text = "Device Finger Print ID:"
			};

			DeviceFingerprintIdLabel = new Label () {
				TextColor = Color.Blue,
				FontSize = 18
			};

			Label FLabel = new Label () {
				TextColor = Color.Blue,
				FontSize = 24,
				Text = "First Params:"
			};

			FirstLabel = new Label () {
				TextColor = Color.Blue,
				FontSize = 18
			};
			Dictionary<string, object> first = Branch.GetInstance ().GetFirstReferringParams ();
			if (first != null) {
				FirstLabel.Text = prettyJSON(first);
			}

			Label LLabel = new Label () {
				TextColor = Color.Blue,
				FontSize = 24,
				Text = "Latest Params"
			};

			LatestLabel = new Label () {
				TextColor = Color.Blue,
				FontSize = 18
			};
			Dictionary<string, object> latest = Branch.GetInstance ().GetLatestReferringParams ();
			if (latest != null) {
				LatestLabel.Text = prettyJSON(latest);
			}

			UriLabel = new Entry () {
				TextColor = Color.Blue,
				Text = "Press button to generate a URL"
			};

			Button getUrlButton = new Button () {
				Text = "Get URL",
				BackgroundColor = Color.Gray,
				TextColor = Color.White
			};
			getUrlButton.Clicked += GetUrlClicked;

			SendEmailButton = new Button () {
				Text = "Send URL in Email",
				IsEnabled = false,
				BackgroundColor = Color.Gray,
				TextColor = Color.White
			};
			SendEmailButton.Clicked += SendEmailClicked;

			StackLayout stack = new StackLayout () {
				Children = {
					SLabel,
					SessionLabel,
					ILabel,
					IdentityIdLabel,
					DLabel,
					DeviceFingerprintIdLabel,
					FLabel,
					FirstLabel,
					LLabel,
					LatestLabel,
					getUrlButton,
					UriLabel,
					SendEmailButton
				},
				Spacing = 20,
				Padding = 20
			};

			ScrollView sv = new ScrollView () {
				Orientation = ScrollOrientation.Vertical,
				Content = stack
			};

			Content = sv;
		}

		protected override void OnAppearing ()
		{
			base.OnAppearing ();

			App current = (App)Application.Current;
			if (current.IsInit) {
				UpdateLabels ();
			} else {
				current.InitChanged += AppIsInit;
			}
		}

		async void GetUrlClicked(object sender, EventArgs e) {
			Dictionary<string, object> data = new Dictionary<string, object> ();
			data.Add ("param1", "test1");
			data.Add ("param2", "test2");
			data.Add ("param3", "test3");
			Dictionary<string, object> extra = new Dictionary<string, object> ();
			extra.Add ("extra1", "test1");
			data.Add ("extra", extra);
			data.Add ("date", DateTime.Now.ToString ());

			await Branch.GetInstance ().GetShortUrlAsync (this,
				data,
				null,
				null,
				null,
				null,
				null);
		}

		void SendEmailClicked(object sender, EventArgs e) {
			if (UriString != null) {
				DependencyService.Get<IEmailUrl> ().EmailUrl (UriString);
			}
		}

		void AppIsInit(object sender, PropertyChangedEventArgs args) {
			App current = (App)Application.Current;
			if (current.IsInit) {
				UpdateLabels ();
			}
		}

		void UpdateLabels() {
			App current = (App)Application.Current;
			SessionLabel.Text = current.SessionId;
			IdentityIdLabel.Text = current.IdentityId;
			DeviceFingerprintIdLabel.Text = current.DeviceFingerPrintId;
			Dictionary<string, object> first = Branch.GetInstance ().GetFirstReferringParams ();
			if (first != null) {
				FirstLabel.Text = prettyJSON(first);
			}
			Dictionary<string, object> latest = Branch.GetInstance ().GetLatestReferringParams ();
			if (latest != null) {
				LatestLabel.Text = prettyJSON(latest);
			}
		}

		private String prettyJSON(Dictionary<string, object> data) {
			return prettyJSON (1, data);
		}

		// For recursion...
		private String prettyJSON(int level, Dictionary<string, object> data) {
			String ret = "";
			String blanks = "                                                         ";
			if (level > 0) {
				ret += blanks.Substring (0, level * 2);
			}
			ret += "{\n";
			foreach (string key in data.Keys) {
				object value;
				data.TryGetValue (key, out value);
				if (value != null) {
					if (value is Dictionary<string, object>) {
						ret += prettyJSON (level + 1, (Dictionary<string, object>)value);
					} else {
						ret += blanks.Substring (0, (level + 1) * 2);
						ret += key;
						ret += " : ";
						ret += value.ToString ();
						ret += "\n";
					}
				}
			}
			if (level > 0) {
				ret += blanks.Substring (0, level * 2);
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
	}
}

