using System;
using System.Collections.Generic;
using Org.Json;
using Newtonsoft.Json;

namespace BranchXamarinSDK.Droid
{
	public static class BranchAndroidUtils
	{
		public static Dictionary<string, object> ToDictionary(JSONObject data) {

			if (data == null) {
				return new Dictionary<string, object> ();
			}

			string res = data.ToString();
			Dictionary<string, object> dict = JsonConvert.DeserializeObject<Dictionary<string, object>> (res);
			return dict;
		}

		public static Dictionary<string, object> ToDictionary(IO.Branch.Indexing.BranchUniversalObject data) {

			if (data == null) {
				return new Dictionary<string, object> ();
			}

			return ToDictionary(data.ConvertToJson());
		}

		public static Dictionary<string, object> ToDictionary(IO.Branch.Referral.Util.LinkProperties data) {

			if (data == null) {
				return new Dictionary<string, object> ();
			}

			var dict = new Dictionary<string, object>();

			dict.Add("~tags", data.Tags == null ? new List<string>() : data.Tags );
			dict.Add("~feature", data.Feature == null ? "" : data.Feature );
			dict.Add("~alias", data.Alias == null ? "" : data.Alias);
			dict.Add("~channel", data.Channel == null ? "" : data.Channel);
			dict.Add("~stage", data.Stage == null ? "" : data.Stage);
			dict.Add("~duration", data.MatchDuration.ToString());
			dict.Add("control_params", data.ControlParams == null ? new Dictionary<string,string>() : data.ControlParams);

			return dict;
		}

		public static JSONObject ToJSONObject(Dictionary<string, object> data) {
			if (data != null) {
				return new JSONObject (data);
			}

			return new JSONObject ();
		}

		public static List<CreditHistoryEntry> ToCreditHistoryArray(JSONArray data) {
			string res = data.ToString();
			List<CreditHistoryEntry> list = JsonConvert.DeserializeObject<List<CreditHistoryEntry>> (res);
			return list;
		}
	}
}

