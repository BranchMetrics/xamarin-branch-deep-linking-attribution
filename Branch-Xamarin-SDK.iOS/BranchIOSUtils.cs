using System;
using System.Collections.Generic;
using Foundation;
using Newtonsoft.Json;

namespace BranchXamarinSDK.iOS
{
	public static class BranchIOSUtils
	{
		public static Dictionary<string, object> ToDictionary(NSDictionary data) {
			Dictionary<string, object> dict = new Dictionary<string, object> ();

			if (data != null) {
				foreach (NSObject obj in data.Keys) {

					if (obj != null) {
						NSString key = new NSString( obj.ToString () );
						dict.Add (key, data.ValueForKey (key));
					}
				}
			}

			return dict;
		}

		public static Dictionary<string, object> ToDictionary(IOSNativeBranch.BranchUniversalObject universalObject) {

			if (universalObject == null) {
				return new Dictionary<string, object> ();
			}

			NSString[] keys = new NSString[] {
				(NSString)"$canonical_identifier",
				(NSString)"$og_title",
				(NSString)"$og_description",
				(NSString)"$og_image_url",
				(NSString)"$content_type",
				(NSString)"$publicly_indexable",
				(NSString)"$keywords",
				(NSString)"$exp_date",
				(NSString)"metadata"
			};

			NSObject[] values = new NSObject[] {
				NSObject.FromObject(universalObject.CanonicalIdentifier != null ? universalObject.CanonicalIdentifier : "" as object),
				NSObject.FromObject(universalObject.Title != null ? universalObject.Title : "" as object),
				NSObject.FromObject(universalObject.ContentDescription != null ? universalObject.ContentDescription : "" as object),
				NSObject.FromObject(universalObject.ImageUrl != null ? universalObject.ImageUrl : "" as object),
				NSObject.FromObject(universalObject.Type != null ? universalObject.Type: "" as object),
				NSObject.FromObject(((int)universalObject.ContentIndexMode).ToString() as object),
				NSObject.FromObject(universalObject.Keywords != null ? universalObject.Keywords : "" as object),
				NSObject.FromObject(universalObject.ExpirationDate != null ? ((DateTime)universalObject.ExpirationDate).Millisecond.ToString () : "" as object),
				NSObject.FromObject(universalObject.Metadata != null ? universalObject.Metadata : "" as object)
			};

			NSDictionary dict = NSDictionary.FromObjectsAndKeys (keys, values);

//			NSDictionary dict = new NSDictionary (
//				"$canonical_identifier", universalObject.CanonicalIdentifier ? universalObject.CanonicalIdentifier : "",
//				"$og_title", universalObject.Title ? universalObject.Title : "",
//				"$og_description", universalObject.ContentDescription ? universalObject.ContentDescription : "",
//				"$og_image_url", universalObject.ImageUrl ? universalObject.ImageUrl : "",
//				"$content_type", universalObject.Type ? universalObject.Type: "",
//				"$publicly_indexable", universalObject.ContentIndexMode.ToString(),
//				"$keywords", universalObject.Keywords ? universalObject.Keywords : "",
//				"$exp_date", universalObject.ExpirationDate ? ((DateTime)universalObject.ExpirationDate).Millisecond.ToString () : "",
//				"metadata", universalObject.Metadata ? universalObject.Metadata : ""
//			);

			return ToDictionary (dict);
		}

		public static Dictionary<string, object> ToDictionary(IOSNativeBranch.BranchLinkProperties linkProperties) {

			if (linkProperties == null) {
				return new Dictionary<string, object> ();
			}

			NSString[] keys = new NSString[] {
				(NSString)"~tags",
				(NSString)"~feature",
				(NSString)"~alias",
				(NSString)"~channel",
				(NSString)"~stage",
				(NSString)"~duration",
				(NSString)"control_params"
			};

			NSObject[] values = new NSObject[] {
				NSObject.FromObject(linkProperties.Tags != null ? linkProperties.Tags : "" as object),
				NSObject.FromObject(linkProperties.Feature != null ? linkProperties.Feature : "" as object),
				NSObject.FromObject(linkProperties.Alias != null ? linkProperties.Alias : "" as object),
				NSObject.FromObject(linkProperties.Channel != null ? linkProperties.Channel : "" as object),
				NSObject.FromObject(linkProperties.Stage != null ? linkProperties.Stage : "" as object),
				NSObject.FromObject(linkProperties.MatchDuration.ToString () as object),
				NSObject.FromObject(linkProperties.ControlParams != null ? linkProperties.ControlParams : "" as object)
			};

			NSDictionary dict = NSDictionary.FromObjectsAndKeys (keys, values);

//			NSDictionary dict = new NSDictionary (
//				"~tags", linkProperties.Tags ? linkProperties.Tags : "",
//				"~feature", linkProperties.Feature ? linkProperties.Feature : "",
//				"~alias", linkProperties.Alias ? linkProperties.Alias : "",
//				"~channel", linkProperties.Channel ? linkProperties.Channel : "",
//				"~stage", linkProperties.Stage ? linkProperties.Stage : "",
//				"~duration", linkProperties.MatchDuration ? linkProperties.MatchDuration.ToString () : "",
//				"control_params", linkProperties.ControlParams ? linkProperties.ControlParams : ""
//			);

			return ToDictionary (dict);
		}

		public static NSDictionary ToNSDictionary(Dictionary<string, object> data) {
			NSDictionary dict;

			if (data != null) {

				int i = 0;
				NSString[] keys = new NSString[data.Count];
				NSObject[] values = new NSObject[data.Count];

				foreach (string key in data.Keys) {
					keys [i] = new NSString (key);
					values [i] = NSObject.FromObject (data[key]);
					++i;
				}

				dict = NSDictionary.FromObjectsAndKeys (values, keys);
			}
			else {
				dict = new NSDictionary ();
			}

			return dict;
		}

		public static NSObject[] ToNSObjectArray (ICollection<string> data) {
			NSObject[] array = null;

			if (data != null) {
				int index = 0;
				array = new NSObject[data.Count];

				foreach (string str in data) {
					array [index] = NSObject.FromObject (str as object);
					++index;
				}
			}
			else {
				array = new NSObject[]{};
			}

			return array;
		}

		public static List<CreditHistoryEntry> ToCreditHistoryArray(NSObject[] data) {
			List<CreditHistoryEntry> list = new List<CreditHistoryEntry> ();

			if (data != null) {

				NSError error = null;
				NSData jsonData = null;
				NSString jsonString = null;

				foreach (NSObject obj in data) {

					if (obj != null) {
						jsonData = NSJsonSerialization.Serialize (obj, NSJsonWritingOptions.PrettyPrinted, out error);
						jsonString = new NSString (jsonData, NSStringEncoding.UTF8);

						list.Add (JsonConvert.DeserializeObject<CreditHistoryEntry> ((string)jsonString));
					}
				}
			}

			return list;
		}

		public static IOSNativeBranch.BranchUniversalObject ToNativeUniversalObject(BranchUniversalObject obj) {
			var res = new IOSNativeBranch.BranchUniversalObject ();

			if (obj != null) {

				if (obj.metadata != null) {
					foreach (String key in obj.metadata.Keys) {
						res.AddMetadataKey (key, obj.metadata [key]);
					}
				}

				res.Keywords = ToNSObjectArray (obj.keywords);
				res.CanonicalIdentifier = obj.canonicalIdentifier != null ? obj.canonicalIdentifier : "";
				res.Title = obj.title != null ? obj.title : "";
				res.ContentDescription = obj.contentDescription != null ? obj.contentDescription : "";
				res.ImageUrl = obj.imageUrl != null ? obj.imageUrl : "";
				res.Type = obj.type != null ? obj.type : "";
				res.ContentIndexMode = (IOSNativeBranch.ContentIndexMode)obj.contentIndexMode;

				if (obj.expirationDate.HasValue) {
					res.ExpirationDate = (NSDate)obj.expirationDate.Value;
				}
			}

			return res;
		}

		public static IOSNativeBranch.BranchLinkProperties ToNativeLinkProperties(BranchLinkProperties obj) {
			var res = new IOSNativeBranch.BranchLinkProperties ();

			if (obj != null) {

				if (obj.controlParams != null) {
					foreach (String key in obj.controlParams.Keys) {
						res.AddControlParam (key, obj.controlParams [key]);
					}
				}

				res.Tags = ToNSObjectArray (obj.tags);
				res.Feature = obj.feature != null ? obj.feature : "";
				res.Alias = obj.alias != null ? obj.alias : "";
				res.Channel = obj.channel != null ? obj.channel : "";
				res.Stage = obj.stage != null ? obj.stage : "";
				res.MatchDuration = (nuint)obj.matchDuration;
			}

			return res;
		}
	}
}
