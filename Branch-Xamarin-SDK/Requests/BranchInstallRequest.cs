using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;

using Newtonsoft.Json;

namespace BranchXamarinSDK
{
	public class BranchInstallRequest : BranchRequest
	{
		public class InstallParams {
			public string app_id;
			public string hardware_id;
			public bool is_hardware_id_real;
			public string app_version;
			public string brand;
			public string model;
			public string os;
			public string os_version;
			public int is_referrable;
			public int update;
			public string carrier;
			public bool has_nfc;
			public bool has_telephone;
			public bool has_bluetooth;
			public string bluetooth_version;
			public int screen_dpi;
			public int screen_height;
			public int screen_width;
			public bool wifi;
			public string uri_scheme;
			public string sdk = "xamarin" + Constants.SDK_VERSION;
			public string link_identifier;
			public string ad_tracking_enabled;

			public InstallParams() {
			}
		}

		readonly InstallParams Params;
		readonly IBranchReferralInitInterface Callback;

		public BranchInstallRequest (
			String hardwareId,
			bool isHardwareIdReal,
			String appVersion,
			String brand,
			String model,
			String os,
			String osVersion,
			bool isReferrable,
			int update,
			String carrier,
			bool hasNfc,
			bool hasTelephone,
			bool hasBluetooth,
			string bluetoothVersion,
			int screenDpi,
			int screenHeight,
			int screenWidth,
			bool wifi,
			string uriScheme,
			string addTrackingEnabled,
			IBranchReferralInitInterface callback) : base(BranchRequestType.REQUEST_INSTALL)
		{
			Params = new InstallParams ();
			Params.app_id = Branch.GetInstance().AppKey;
			Params.hardware_id = hardwareId;
			Params.is_hardware_id_real = isHardwareIdReal;
			Params.app_version = appVersion;
			Params.brand = brand;
			Params.model = model;
			Params.os = os;
			Params.os_version = osVersion;
			Params.is_referrable = isReferrable?1:0;
			Params.update = update;
			Params.carrier = carrier;
			Params.has_nfc = hasNfc;
			Params.has_bluetooth = hasBluetooth;
			Params.has_telephone = hasTelephone;
			Params.bluetooth_version = bluetoothVersion;
			Params.screen_dpi = screenDpi;
			Params.screen_width = screenWidth;
			Params.screen_height = screenHeight;
			Params.uri_scheme = uriScheme;
			Params.wifi = wifi;
			Params.link_identifier = Branch.GetInstance().LinkClickIdentifier;
			Params.ad_tracking_enabled = addTrackingEnabled;
			Callback = callback;
		}

		override async public Task Execute() {
			try {
				InitClient();
				var inSettings = new JsonSerializerSettings();
				inSettings.NullValueHandling = NullValueHandling.Ignore;
				String inBody = JsonConvert.SerializeObject(Params, inSettings);
				Branch.GetInstance ().Log ("Sending install request", "WEBAPI");
				HttpResponseMessage response = await Client.PostAsync ("v1/install",
					new StringContent (inBody, System.Text.Encoding.UTF8, "application/json"));
				if (response.StatusCode == HttpStatusCode.OK) {
					String body = await response.Content.ReadAsStringAsync ();
					Branch.GetInstance ().Log ("Install completed successfully", "WEBAPI");

					var settings = new JsonSerializerSettings();
					var converterList = new List<JsonConverter>();
					converterList.Add(new DictionaryConverter());
					settings.Converters = converterList;
					Dictionary<string, object> result = JsonConvert.DeserializeObject<Dictionary<string, object>>(body, settings);

					object temp;
					result.TryGetValue("data", out temp);
					Dictionary<string, object> data;
					data = temp as Dictionary<string, object>;
					String dataStr = null;
					if (data == null) {
						if (temp != null) {
							dataStr = temp as String;
							data = JsonConvert.DeserializeObject<Dictionary<string, object>>(dataStr, settings);
						}
					} else {
						dataStr = JsonConvert.SerializeObject(data);
					}

					Branch.GetInstance ().UpdateUserAndSession(result, dataStr, true);

					if (Callback != null) {
						Callback.OnInitFinished (result, null);
					}
				} else {
					Branch.GetInstance().Log("Install failed with HTTP error: " + response.ReasonPhrase, "WEBAPI", 6);
					if (Callback != null) {
						Callback.OnInitFinished (null, new BranchError (response.ReasonPhrase, Convert.ToInt32(response.StatusCode)));
					}
				}
			} catch (TaskCanceledException ex) {
				Branch.GetInstance ().Log ("Install timed out", "WEBAPI", 6);
				if (Callback != null) {
					var error = new BranchError ("Operation Timed Out", 1);
					Callback.OnInitFinished (null, error);
				}
			} catch (Exception ex) {
				Branch.GetInstance ().Log ("Exception sending install request: " + ex.Message, "WEBAPI", 6);
				System.Diagnostics.Debug.WriteLine ("Exception: " + ex);
			}
		}
	}
}

