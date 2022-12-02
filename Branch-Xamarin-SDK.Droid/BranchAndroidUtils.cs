using System;
using System.Collections.Generic;
using Org.Json;
using Newtonsoft.Json;
using Android.Content;
using static Java.Interop.JniEnvironment;

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

			var dict = new Dictionary<string, object>();
			dict.Add("$canonical_identifier", data.CanonicalIdentifier == null ? "" : data.CanonicalIdentifier );
			dict.Add("$canonical_url", data.CanonicalUrl == null ? "" : data.CanonicalUrl );
			dict.Add("$og_title", data.Title == null ? "" : data.Title );
			dict.Add("$og_description", data.Description == null ? "" : data.Description);
			dict.Add("$og_image_url", data.ImageUrl == null ? "" : data.ImageUrl);
			dict.Add("$publicly_indexable", data.IsPublicallyIndexable ? "0" : "1");
            dict.Add("$locally_indexable", data.IsLocallyIndexable ? "0" : "1");
			dict.Add("$exp_date", data.ExpirationTime.ToString());

            if (keywordsList != null) {
                dict.Add("$keywords", keywordsList);
            }

            if (data.ContentMetadata != null) {
                dict.Add("metadata", ToDictionary(data.ContentMetadata.ConvertToJson()));
            }

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

		public static IO.Branch.Indexing.BranchUniversalObject ToNativeBUO(BranchUniversalObject buo) {
			IO.Branch.Indexing.BranchUniversalObject resBuo = new IO.Branch.Indexing.BranchUniversalObject();

			resBuo.SetCanonicalIdentifier(buo.canonicalIdentifier);
			resBuo.SetCanonicalUrl(buo.canonicalUrl);
			resBuo.SetTitle(buo.title);
			resBuo.SetContentDescription(buo.contentDescription);
			resBuo.SetContentImageUrl(buo.imageUrl);

			if (buo.contentIndexMode == 0)
				resBuo.SetContentIndexingMode(IO.Branch.Indexing.BranchUniversalObject.CONTENT_INDEX_MODE.Public);
			else
				resBuo.SetContentIndexingMode(IO.Branch.Indexing.BranchUniversalObject.CONTENT_INDEX_MODE.Private);

            if (buo.localIndexMode == 0)
                resBuo.SetLocalIndexMode(IO.Branch.Indexing.BranchUniversalObject.CONTENT_INDEX_MODE.Public);
            else
                resBuo.SetLocalIndexMode(IO.Branch.Indexing.BranchUniversalObject.CONTENT_INDEX_MODE.Private);

			Java.Util.Date date = new Java.Util.Date(buo.expirationDate.HasValue ? (buo.expirationDate.Value.Ticks / 10000) : 0);
			resBuo.SetContentExpiration(date);

            foreach (string keyword in buo.keywords) {
                resBuo.AddKeyWord(keyword);
            }

            JSONObject dict = new JSONObject(buo.metadata.ToJsonString());
            if (dict != null)
            {
                IO.Branch.Referral.Util.ContentMetadata cmd =
                      IO.Branch.Referral.Util.ContentMetadata.CreateFromJson(new IO.Branch.Referral.BranchUtil.JsonReader(dict));

                if (cmd != null) {
                    resBuo.SetContentMetadata(cmd);
                }
            }

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

        public static IO.Branch.Referral.QRCode.BranchQRCode ToNativeQRCode(BranchQRCodeSettings qrCodeSettings)
        {
            Array codePatternValues = Enum.GetValues(typeof(BranchQRCodeSettings.CodePattern));
            Array finderPatternValues = Enum.GetValues(typeof(BranchQRCodeSettings.FinderPattern));
            Array imageFormatValues = Enum.GetValues(typeof(BranchQRCodeSettings.ImageFormat));

            IO.Branch.Referral.QRCode.BranchQRCode resQRCode = new IO.Branch.Referral.QRCode.BranchQRCode();

            resQRCode.SetCodeColor(qrCodeSettings.codeColor);
            resQRCode.SetBackgroundColor(qrCodeSettings.backgroundColor);
            resQRCode.SetWidth((Java.Lang.Integer)qrCodeSettings.width);
            resQRCode.SetMargin((Java.Lang.Integer)qrCodeSettings.margin);
            resQRCode.SetCenterLogo(qrCodeSettings.centerLogoUrl);
            resQRCode.SetImageFormat((IO.Branch.Referral.QRCode.BranchQRCode.BranchImageFormat)(Array.IndexOf(imageFormatValues, qrCodeSettings.imageFormat)));

            resQRCode.SetPattern((IO.Branch.Referral.QRCode.BranchQRCode.BranchQRCodePattern)(Array.IndexOf(codePatternValues, qrCodeSettings.codePattern)));
            resQRCode.SetFinderPattern((IO.Branch.Referral.QRCode.BranchQRCode.BranchQRCodeFinderPattern)(Array.IndexOf(finderPatternValues, qrCodeSettings.finderPattern)));
            resQRCode.SetFinderPatternColor(qrCodeSettings.finderPatternColor);
            resQRCode.SetBackgroundImage(qrCodeSettings.backgroundImageUrl);
            resQRCode.SetBackgroundImageOpacity((Java.Lang.Integer)qrCodeSettings.backgroundImageOpacity);
            resQRCode.SetPatternImage(qrCodeSettings.codePatternUrl);
            resQRCode.SetFinderEyeColor(qrCodeSettings.finderEyeColor);

            return resQRCode;
        }

        public static void SendEvent(BranchEvent e, Context c) {
            IO.Branch.Referral.Util.BranchEvent branchEvent = null;
            JSONObject parameters = new JSONObject(e.ToJsonString());

            if (parameters.Has("event_name")) {

                // try to create standart event
                foreach (IO.Branch.Referral.Util.BRANCH_STANDARD_EVENT type in IO.Branch.Referral.Util.BRANCH_STANDARD_EVENT.Values()) {
                    if (type.Name.Equals(parameters.GetString("event_name"))) {
                        branchEvent = new IO.Branch.Referral.Util.BranchEvent(type);
                        break;
                    }
                }

                // if standart event can't be created, let's create custom event
                if (branchEvent == null) {
                    branchEvent = new IO.Branch.Referral.Util.BranchEvent(parameters.GetString("event_name"));
                }
            }
            else {
                return;
            }

            if (parameters.Has("transaction_id")) {
                branchEvent.SetTransactionID(parameters.GetString("transaction_id"));
            }

			if (parameters.Has("customer_event_alias"))
			{
				branchEvent.SetCustomerEventAlias(parameters.GetString("customer_event_alias"));
			}

			if (parameters.Has("affiliation")) {
                branchEvent.SetAffiliation(parameters.GetString("affiliation"));
            }

            if (parameters.Has("coupon")) {
                branchEvent.SetCoupon(parameters.GetString("coupon"));
            }

            if (parameters.Has("currency")) {
                branchEvent.SetCurrency(IO.Branch.Referral.Util.CurrencyType.GetValue(parameters.GetString("currency")));
            }

            if (parameters.Has("tax")) {
                branchEvent.SetTax(parameters.GetDouble("tax"));
            }

            if (parameters.Has("revenue")) {
                branchEvent.SetRevenue(parameters.GetDouble("revenue"));
            }

            if (parameters.Has("description")) {
                branchEvent.SetDescription(parameters.GetString("description"));
            }

            if (parameters.Has("shipping")) {
                branchEvent.SetShipping(parameters.GetDouble("shipping"));
            }

            if (parameters.Has("search_query")) {
                branchEvent.SetSearchQuery(parameters.GetString("search_query"));
            }

            if (parameters.Has("custom_data")) {
                JSONObject dict = parameters.GetJSONObject("custom_data");
                Java.Util.IIterator keys = dict.Keys();
                while (keys.HasNext) {
                    String key = keys.Next().ToString();
                    branchEvent.AddCustomDataProperty(key, dict.GetString(key));
                }
            }

            if (parameters.Has("content_items")) {
                JSONArray array = parameters.GetJSONArray("content_items");
                for (int i = 0; i < array.Length(); i++) {
                    branchEvent.AddContentItems( ToNativeBUO(new BranchUniversalObject(array.Get(i).ToString())) );
                }
            }

            // log event
            branchEvent.LogEvent(c);
        }
	}
}
