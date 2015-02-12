using System;
using System.Collections.Generic;

namespace BranchXamarinSDK
{
	public class BranchLinkData
	{
		// These fields are used to build the JSON for the request
		public string app_id;
		public string session_id;
		public string identity_id;
		public string device_fingerprint_id;

		// These fields are used to build the JSON for the request and for caching
		public readonly ICollection<String> tags;
		public readonly string alias;
		public readonly int type;
		public readonly string channel;
		public readonly string feature;
		public readonly string stage;
		public readonly Dictionary<string, object> data;

		public BranchLinkData (ICollection<String> inTags,
			string inAlias,
			int inType,
			string inChannel,
			string inFeature,
			string inStage,
			Dictionary<string, object> inData) {
			tags = inTags;
			alias = inAlias;
			type = inType;
			channel = inChannel;
			feature = inFeature;
			stage = inStage;
			data = inData;
		}

		public override bool Equals (object obj)
		{
			if (obj == null) {
				return false;
			}

			if (obj == this) {
				return true;
			}

			if (obj.GetType () != this.GetType ()) {
				return false;
			}

			BranchLinkData other = (BranchLinkData)obj;

			if (other.alias.Equals (alias) &&
			    other.tags.Equals (tags) &&
			    other.type == type &&
			    other.channel.Equals (channel) &&
			    other.feature.Equals (feature) &&
			    other.stage.Equals (stage) &&
			    other.data.Equals (data)) {
				return true;
			}

			return false;
		}

		public override int GetHashCode ()
		{
			int result = 1;
			const int prime = 19;

			result = prime * result + type;
			result = prime * result + ((alias == null) ? 0 : alias.ToLower().GetHashCode());
			result = prime * result + ((channel == null) ? 0 : channel.ToLower().GetHashCode());
			result = prime * result + ((feature == null) ? 0 : feature.ToLower().GetHashCode());
			result = prime * result + ((stage == null) ? 0 : stage.ToLower().GetHashCode());
			result = prime * result + ((data == null) ? 0 : data.GetHashCode());

			if (this.tags != null) {
				foreach (String tag in tags) {
					result = prime * result + tag.ToLower().GetHashCode();
				}
			}

			return result;
		}
	}
}

