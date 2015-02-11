using BranchXamarinSDK;

using System;
using System.Collections.Generic;

using Xamarin.Forms;

namespace BranchXamarinSDKTestbed
{
	public class TestPage : ContentPage , IBranchGetUrlInterface
	{
		Label UriLabel;

		public TestPage ()
		{
			BackgroundColor = Color.White;
			NavigationPage.SetHasNavigationBar (this, false);

			UriLabel = new Label () {
				TextColor = Color.Blue,
				Font = Font.SystemFontOfSize (18),
				Text = "<No URL Yet>"
			};

			Button getUrlButton = new Button () {
				Text = "Get URL"
			};
			getUrlButton.Clicked += GetUrlClicked;

			StackLayout stack = new StackLayout () {
				Children = {
					getUrlButton,
					UriLabel
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
		}

		async void GetUrlClicked(object sender, EventArgs e) {
			Dictionary<String, dynamic> data = new Dictionary<String, dynamic> ();
			data.Add ("param1", "test1");
			data.Add ("param2", "test2");

			await Branch.GetInstance ().GetShortUrlAsync (this,
				data,
				"testalias",
				null,
				null,
				null,
				null);
		}

		#region IBranchGetUrlInterface implementation

		public void Finished (Uri uri, BranchError error)
		{
			if (uri != null) {
				UriLabel.Text = uri.ToString ();
			} else if (error != null) {
				UriLabel.Text = error.ErrorMessage;
			}
		}

		#endregion
	}
}

