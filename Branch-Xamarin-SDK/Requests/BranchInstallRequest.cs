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
			public bool debug;
			public String sdk = Constants.SDK_VERSION;

			public InstallParams() {
			}
		}

		private InstallParams Params;
		IBranchReferralInitInterface Callback;

		public BranchInstallRequest (String appId,
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
			bool debug,
			IBranchReferralInitInterface callback) : base(BranchRequestType.REQUEST_INSTALL)
		{
			Params = new InstallParams ();
			Params.app_id = appId;
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
			Params.debug = debug;
			Callback = callback;
		}

		override async public Task Execute() {
			try {
				InitClient();
				String inBody = JsonConvert.SerializeObject(Params);
				HttpResponseMessage response = await Client.PostAsync ("v1/install",
					new StringContent (inBody, System.Text.Encoding.UTF8, "application/json"));
				if (response.StatusCode == HttpStatusCode.OK) {
					String body = await response.Content.ReadAsStringAsync ();

					JsonSerializerSettings settings = new JsonSerializerSettings();
					List<JsonConverter> converterList = new List<JsonConverter>();
					converterList.Add(new DictionaryConverter());
					settings.Converters = converterList;
					Dictionary<string, object> result = JsonConvert.DeserializeObject<Dictionary<string, object>>(body, settings);

					object temp;
					result.TryGetValue("data", out temp);
					Dictionary<string, object> data = null;
					if (temp is Dictionary<string, object>) {
						data = (Dictionary<string, object>)temp;
					} else if (temp is String) {
						data = JsonConvert.DeserializeObject<Dictionary<string, object>>((String)temp, settings);
					}

					Branch.GetInstance().UpdateUserAndSession(result, data, true);

					if (Callback != null) {
						Callback.OnInitFinished (result, null);
					}
				} else {
					if (Callback != null) {
						Callback.OnInitFinished (null, new BranchError (response.ReasonPhrase, System.Convert.ToInt32(response.StatusCode)));
					}
				}
			} catch (TaskCanceledException ex) {
				if (Callback != null) {
					BranchError error = new BranchError ("Operation Timed Out", 1);
					Callback.OnInitFinished (null, error);
				}
			} catch (Exception ex) {
				System.Diagnostics.Debug.WriteLine ("Exception: " + ex);
			}
		}
	}
}

