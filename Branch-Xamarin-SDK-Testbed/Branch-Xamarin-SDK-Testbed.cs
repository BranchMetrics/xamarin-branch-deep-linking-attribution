using BranchXamarinSDK;

using System.Collections.Generic;
using System.ComponentModel;

using Xamarin.Forms;

namespace BranchXamarinSDKTestbed
{
	public class App : Application, IBranchSessionInterface
	{
		BranchError error;
		public BranchError Error {
			get {
				return error;
			}
			set {
				error = value;
				OnPropertyChanged ("Error");
			}
		}
		public event PropertyChangedEventHandler ErrorChanged;

		public App ()
		{
			var navPage = new NavigationPage ();
			navPage.PushAsync (new TestPage ());

			MainPage = navPage;
		}

		protected override void OnStart ()
		{
			Branch branch = Branch.GetInstance ();
			branch.Debug = true; // Each install is a "new" install
			branch.InitSessionAsync (this);
		}
	
		protected override async void OnSleep ()
		{
			Branch branch = Branch.GetInstance ();
			// Await here ensure the thread stays alive long enough to complete the close.
			await branch.CloseSessionAsync ();
		}

		protected override void OnResume ()
		{
			Branch branch = Branch.GetInstance ();
			branch.Debug = true; // Each install is a "new" install
			branch.SmartSessionEnabled = false;
			branch.InitSessionAsync (this);
		}

		#region INotifyPropertyChanged

		override protected void OnPropertyChanged(string propertyName = null) {
			if (propertyName.Equals ("Error")) {
				PropertyChangedEventHandler handler = ErrorChanged;
				if (handler != null) {
					handler (this, new PropertyChangedEventArgs ("Error"));
				}
			} else {
				base.OnPropertyChanged (propertyName);
			}
		}

		#endregion

		#region IBranchSessionInterface implementation

		public void InitSessionComplete (Dictionary<string, object> data)
		{
			Error = new BranchError("Ok");
		}

		public void CloseSessionComplete ()
		{
			Error = new BranchError("Ok");
		}

		public void SessionRequestError (BranchError error)
		{
			Error = error;
		}

		#endregion
	}
}

