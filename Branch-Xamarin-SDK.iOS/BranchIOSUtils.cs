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
				foreach (NSString key in data.Keys) {
					dict.Add (key, data.ValueForKey (key));
				}
			}

			return dict;
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
					jsonData = NSJsonSerialization.Serialize (obj, NSJsonWritingOptions.PrettyPrinted, out error);
					jsonString = new NSString (jsonData, NSStringEncoding.UTF8);

					list.Add (JsonConvert.DeserializeObject<CreditHistoryEntry> ((string)jsonString));
				}
			}

			return list;
		}
	}
}
