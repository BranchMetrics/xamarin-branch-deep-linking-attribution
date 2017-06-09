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

			var keywordsList = new List<object>();
			if (data.Keywords != null) {
				foreach(object obj in data.Keywords) {
					keywordsList.Add(obj);
				}
			}

			var metadataDict = new Dictionary<string, object>();
			if (data.Metadata != null) {
				foreach(string key in data.Metadata.Keys) {
					metadataDict.Add(key, data.Metadata[key]);
				}
			}

			var dict = new Dictionary<string, object>();
			dict.Add("$canonical_identifier", data.CanonicalIdentifier == null ? "" : data.CanonicalIdentifier );
			dict.Add("$canonical_url", data.CanonicalUrl == null ? "" : data.CanonicalUrl );
			dict.Add("$og_title", data.Title == null ? "" : data.Title );
			dict.Add("$og_description", data.Description == null ? "" : data.Description);
			dict.Add("$og_image_url", data.ImageUrl == null ? "" : data.ImageUrl);
			dict.Add("$content_type", data.Type == null ? "" : data.Type);
			dict.Add("$publicly_indexable", data.IsPublicallyIndexable ? "0" : "1");
			dict.Add("$exp_date", data.ExpirationTime.ToString());
			dict.Add("$keywords", keywordsList);
			dict.Add("metadata", metadataDict);

			return dict;
		}

		public static Dictionary<string, object> ToDictionary(IO.Branch.Referral.Util.LinkProperties data) {

			if (data == null) {
				return new Dictionary<string, object> ();
			}

			var tagsList = new List<object>();
			if (data.Tags != null)
			{
				foreach (object obj in data.Tags)
				{
					tagsList.Add(obj);
				}
			}

			var controlParamsDict = new Dictionary<string, object>();
			if (data.ControlParams != null) {
				foreach(string key in data.ControlParams.Keys) {
					controlParamsDict.Add(key, data.ControlParams[key]);
				}
			}

			var dict = new Dictionary<string, object>();
			dict.Add("~tags", tagsList );
			dict.Add("~feature", data.Feature == null ? "" : data.Feature );
			dict.Add("~alias", data.Alias == null ? "" : data.Alias);
			dict.Add("~channel", data.Channel == null ? "" : data.Channel);
			dict.Add("~stage", data.Stage == null ? "" : data.Stage);
			dict.Add("~duration", data.MatchDuration.ToString());
			dict.Add("control_params", controlParamsDict);

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

		public static IO.Branch.Indexing.BranchUniversalObject ToNativeBUO(BranchUniversalObject buo) {
			IO.Branch.Indexing.BranchUniversalObject resBuo = new IO.Branch.Indexing.BranchUniversalObject();

			foreach (string keyword in buo.keywords) {
				resBuo.AddKeyWord(keyword);
			}

			foreach (string key in buo.metadata.Keys)
			{
				resBuo.AddContentMetadata(key, buo.metadata[key]);
			}

			resBuo.SetCanonicalIdentifier(buo.canonicalIdentifier);
			resBuo.SetCanonicalUrl(buo.canonicalUrl);
			resBuo.SetTitle(buo.title);
			resBuo.SetContentDescription(buo.contentDescription);
			resBuo.SetContentImageUrl(buo.imageUrl);
			resBuo.SetContentType(buo.type);

			if (buo.contentIndexMode == 0)
				resBuo.SetContentIndexingMode(IO.Branch.Indexing.BranchUniversalObject.CONTENT_INDEX_MODE.Public);
			else
				resBuo.SetContentIndexingMode(IO.Branch.Indexing.BranchUniversalObject.CONTENT_INDEX_MODE.Private);

			Java.Util.Date date = new Java.Util.Date(buo.expirationDate.HasValue ? (buo.expirationDate.Value.Ticks / 10000) : 0);
			resBuo.SetContentExpiration(date);

			return resBuo;
		}

		public static IO.Branch.Referral.Util.LinkProperties ToNativeBLP(BranchLinkProperties blp) {
			IO.Branch.Referral.Util.LinkProperties resBlp = new IO.Branch.Referral.Util.LinkProperties();

			foreach (string tag in blp.tags) {
				resBlp.AddTag(tag);
			}

			foreach (string key in blp.controlParams.Keys) {
				resBlp.AddControlParameter(key, blp.controlParams[key]);
			}

			resBlp.SetAlias(blp.alias);
			resBlp.SetChannel(blp.channel);
			resBlp.SetDuration(blp.matchDuration);
			resBlp.SetFeature(blp.feature);
			resBlp.SetStage(blp.stage);

			return resBlp;
		}
	}
}

