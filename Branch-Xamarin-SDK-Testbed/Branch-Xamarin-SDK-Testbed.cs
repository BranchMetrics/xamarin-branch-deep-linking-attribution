using BranchXamarinSDK;

using System;
using System.Collections.Generic;
using System.ComponentModel;

using Xamarin.Forms;

namespace BranchXamarinSDKTestbed
{
	public class App : Application, IBranchReferralInitInterface
	{
		private bool isInit;
		public String SessionId { get; set; }
		public String IdentityId { get; set; }
		public String DeviceFingerPrintId { get; set; }
		public String Error { get; set; }

		public Boolean IsInit {
			get {
				return isInit;
			}
			set {
				isInit = value;
				OnPropertyChanged ("IsInit");
			}
		}
		public event PropertyChangedEventHandler InitChanged;

		public App ()
		{
			IsInit = false;

			NavigationPage navPage = new NavigationPage ();
			navPage.PushAsync (new TestPage ());

			MainPage = navPage;
		}

		protected override void OnStart ()
		{
			Branch branch = Branch.GetInstance ();
			branch.Debug = true; // Each install is a "new" install
			branch.InitSessionAsync (this);
		}
	
		protected override void OnSleep ()
		{
			Branch branch = Branch.GetInstance ();
			branch.CloseSessionAsync ();
		}

		protected override void OnResume ()
		{
			Branch branch = Branch.GetInstance ();
			branch.Debug = true; // Each install is a "new" install
			branch.InitSessionAsync (this);
		}

		#region INotifyPropertyChanged

		override protected void OnPropertyChanged(string property = null) {
			if (property.Equals ("IsInit")) {
				PropertyChangedEventHandler handler = InitChanged;
				if (handler != null) {
					handler (this, new PropertyChangedEventArgs ("IsInit"));
				}
			} else {
				base.OnPropertyChanged (property);
			}
		}

		#endregion

		#region IBranchReferralInitInterface implementation

		public void OnInitFinished (Dictionary<string, object> result, BranchError error)
		{
			System.Diagnostics.Debug.WriteLine ("Initial Result: " + result);

			if (result != null) {
				Error = null;
				IsInit = true;
			} else {
				Error = error.ErrorMessage;
				IsInit = false;
			}
		}

		#endregion
	}
}

