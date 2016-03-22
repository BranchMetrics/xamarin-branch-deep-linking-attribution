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

