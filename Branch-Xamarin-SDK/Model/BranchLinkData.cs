using System;
using System.Collections.Generic;

namespace BranchXamarinSDK
{
	public class BranchLinkData
	{
		public readonly ICollection<String> tags;
		public readonly string alias;
		public readonly int type;
		public readonly string channel;
		public readonly string feature;
		public readonly string stage;
		public readonly string data;

		public BranchLinkData (ICollection<String> inTags,
			string inAlias,
			int inType,
			string inChannel,
			string inFeature,
			string inStage,
			String inData) {
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

			if (obj.GetType () != GetType ()) {
				return false;
			}

			var other = (BranchLinkData)obj;

			if (((other.tags != null) && (tags == null)) ||
			    ((other.tags == null) && (tags != null)) ||
			    ((other.tags != null) && (other.tags.Count != tags.Count))) {
				return false;
			}

			if (tags != null) {
				foreach (String tag in tags) {
					if (!other.tags.Contains (tag)) {
						return false;
					}
				}
			}

			if (((other.alias != null) && (alias == null)) ||
				((other.alias == null) && (alias != null)) ||
				((other.alias != null) && !other.alias.Equals(alias))) {
				return false;
			}

			if (((other.channel != null) && (channel == null)) ||
				((other.channel == null) && (channel != null)) ||
				((other.channel != null) && !other.channel.Equals(channel))) {
				return false;
			}

			if (((other.feature != null) && (feature == null)) ||
				((other.feature == null) && (feature != null)) ||
				((other.feature != null) && !other.feature.Equals(feature))) {
				return false;
			}

			if (((other.stage != null) && (stage == null)) ||
				((other.stage == null) && (stage != null)) ||
				((other.stage != null) && !other.stage.Equals(stage))) {
				return false;
			}

			if (((other.data != null) && (data == null)) ||
				((other.data == null) && (data != null)) ||
				((other.data != null) && !other.data.Equals(data))) {
				return false;
			}

			// Last thing to check.  If this matches, equals is true...
			return other.type == type;
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
			result = prime * result + ((data == null) ? 0 : data.ToLower ().GetHashCode ());

			if (tags != null) {
				foreach (String tag in tags) {
					result = prime * result + tag.ToLower().GetHashCode();
				}
			}

			return result;
		}
	}
}

