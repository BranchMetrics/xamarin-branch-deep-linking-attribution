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
		public class InstallParams : BranchParams {
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
			public string link_identifier;
			public string ad_tracking_enabled;
			public string android_app_link_url;
			public string push_identifier;
			public string external_intent_uri;
			public string external_intent_extra;

			public InstallParams() {
			}
		}

		readonly IBranchSessionInterface Callback;

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
			IBranchSessionInterface callback) : base(BranchRequestType.REQUEST_INSTALL, new InstallParams())
		{
			var LocalParams = Params as InstallParams;
			LocalParams.hardware_id = hardwareId;
			LocalParams.is_hardware_id_real = isHardwareIdReal;
			LocalParams.app_version = appVersion;
			LocalParams.brand = brand;
			LocalParams.model = model;
			LocalParams.os = os;
			LocalParams.os_version = osVersion;
			LocalParams.is_referrable = isReferrable?1:0;
			LocalParams.update = update;
			LocalParams.carrier = carrier;
			LocalParams.has_nfc = hasNfc;
			LocalParams.has_bluetooth = hasBluetooth;
			LocalParams.has_telephone = hasTelephone;
			LocalParams.bluetooth_version = bluetoothVersion;
			LocalParams.screen_dpi = screenDpi;
			LocalParams.screen_width = screenWidth;
			LocalParams.screen_height = screenHeight;
			LocalParams.uri_scheme = uriScheme;
			LocalParams.wifi = wifi;
			LocalParams.link_identifier = Branch.GetInstance().LinkClickIdentifier;
			LocalParams.ad_tracking_enabled = addTrackingEnabled;
			LocalParams.android_app_link_url = Branch.GetInstance().AndroidAppLink;
			LocalParams.push_identifier = Branch.GetInstance().PushIdentifier;
			LocalParams.external_intent_uri = Branch.GetInstance().ExternalUri;
			LocalParams.external_intent_extra = Branch.GetInstance().ExternalExtra;

			Callback = callback;
		}

		override async public Task Execute() {
			InitBaseParams ();

			// These aren't used in the INSTALL request
			Params.session_id = null;
			Params.device_fingerprint_id = null;
			Params.identity_id = null;
			Params.link_click_id = null;

			try {
				HttpResponseMessage response = await ExecutePost ("v1/install");
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
						Callback.InitSessionComplete(data);
					}
				} else {
					// Clear the Inited flag from the branch object...
					Branch.GetInstance().Inited = false;
					if (Callback != null) {
						Callback.SessionRequestError(new BranchError(response.ReasonPhrase, Convert.ToInt32(response.StatusCode)));
					}
				}
			} catch (TaskCanceledException) {
				// Clear the Inited flag from the branch object...
				Branch.GetInstance().Inited = false;
				if (Callback != null) {
					Callback.SessionRequestError (new BranchError ("Operation timed out"));
				}
			} catch (Exception ex) {
				// Clear the Inited flag from the branch object...
				Branch.GetInstance().Inited = false;
				if (Callback != null) {
					Callback.SessionRequestError (new BranchError ("Exception: " + ex.Message));
				}
			}
		}
	}
}

