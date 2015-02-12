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
		Label UriLabel;

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

			UriLabel = new Label () {
				TextColor = Color.Blue,
				FontSize = 18,
				Text = "Press button to generate a URL"
			};

			Button getUrlButton = new Button () {
				Text = "Get URL"
			};
			getUrlButton.Clicked += GetUrlClicked;

			SendEmailButton = new Button () {
				Text = "Send URL in Email",
				IsEnabled = false
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
					getUrlButton,
					UriLabel,
					SendEmailButton
				},
				Spacing = 20
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

