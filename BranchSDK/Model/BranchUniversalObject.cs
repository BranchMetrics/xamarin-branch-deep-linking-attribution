﻿using System;
using System.Collections.Generic;
using Newtonsoft.Json;

namespace BranchSDK
{
    public class BranchUniversalObject
    {

        // Canonical identifier for the content referred. Normally the canonical path for your content in the app or web
        public string canonicalIdentifier;

        // Canonical url for the content referred. This would be the corresponding website URL
        public string canonicalUrl;

        // Title for the content referred by BranchUniversalObject
        public string title;

        // Description for the content referred
        public string contentDescription;

        // An image url associated with the content referred
        public string imageUrl;

        // Meta data provided for the content. This meta data is used as the link parameters for links created from this object
        public BranchContentMetadata metadata;

        // Content index mode: 0 - private mode, 1 - public mode
        public int contentIndexMode;

        // Content index mode: 0 - private mode, 1 - public mode
        public int localIndexMode;

        // Any keyword associated with the content. Used for indexing
        public List<String> keywords;

        // Expiry date for the content and any associated links
        public DateTime? expirationDate = null;


        public BranchUniversalObject()
        {
            Init();
        }

        public BranchUniversalObject(string json)
        {
            Init();
            loadFromJson(json);
        }

        public BranchUniversalObject(Dictionary<string, object> data)
        {
            Init();
            loadFromDictionary(data);
        }

        private void Init()
        {
            canonicalIdentifier = "";
            canonicalUrl = "";
            title = "";
            contentDescription = "";
            imageUrl = "";
            metadata = new BranchContentMetadata();
            contentIndexMode = 0;
            localIndexMode = 0;
            keywords = new List<string>();

            //NOTE: fix for https://github.com/BranchMetrics/xamarin-branch-deep-linking/issues/97
            expirationDate = new DateTime(2200, 12, 30);
        }

        public void loadFromJson(string json)
        {
            if (string.IsNullOrEmpty(json))
                return;

            var data = JsonConvert.DeserializeObject<Dictionary<string, object>>(json);
            loadFromDictionary(data);
        }

        public void loadFromDictionary(Dictionary<string, object> data)
        {
            if (data == null)
                return;

            //NOTE: fix for https://github.com/BranchMetrics/xamarin-branch-deep-linking/issues/97
            expirationDate = new DateTime(2200, 12, 30);

            if (data.ContainsKey("$canonical_identifier") && data["$canonical_identifier"] != null)
            {
                canonicalIdentifier = data["$canonical_identifier"].ToString();
            }
            if (data.ContainsKey("$canonical_url") && data["$canonical_url"] != null)
            {
                canonicalUrl = data["$canonical_url"].ToString();
            }
            if (data.ContainsKey("$og_title") && data["$og_title"] != null)
            {
                title = data["$og_title"].ToString();
            }
            if (data.ContainsKey("$og_description") && data["$og_description"] != null)
            {
                contentDescription = data["$og_description"].ToString();
            }
            if (data.ContainsKey("$og_image_url") && data["$og_image_url"] != null)
            {
                imageUrl = data["$og_image_url"].ToString();
            }
            if (data.ContainsKey("$publicly_indexable"))
            {
                if (!string.IsNullOrEmpty(data["$publicly_indexable"].ToString()))
                {
                    contentIndexMode = Convert.ToInt32(data["$publicly_indexable"].ToString());
                }
            }
            if (data.ContainsKey("$locally_indexable"))
            {
                if (!string.IsNullOrEmpty(data["$locally_indexable"].ToString()))
                {
                    localIndexMode = Convert.ToInt32(data["$locally_indexable"].ToString());
                }
            }
            if (data.ContainsKey("$exp_date"))
            {
                if (!string.IsNullOrEmpty(data["$exp_date"].ToString()))
                {
                    expirationDate = new DateTime(Convert.ToInt64(data["$exp_date"].ToString()) * 10000); // milliseconds to ticks
                }
            }
            if (data.ContainsKey("$keywords"))
            {
                if (data["$keywords"] != null)
                {
                    List<object> keywordsTemp = data["$keywords"] as List<object>;

                    if (keywordsTemp != null)
                    {
                        foreach (object obj in keywordsTemp)
                        {
                            keywords.Add(obj.ToString());
                        }
                    }
                }
            }
            if (data.ContainsKey("metadata"))
            {
                if (data["metadata"] != null)
                {
                    if (data["metadata"] is string metadataJson)
                    {
                        Dictionary<string, object> metaTemp = JsonConvert.DeserializeObject<Dictionary<string, object>>(metadataJson);

                        if (metaTemp != null)
                        {
                            if (metaTemp.ContainsKey("+clicked_branch_link"))
                            {
                                if (metaTemp["+clicked_branch_link"].ToString().Equals("1"))
                                {
                                    metaTemp["+clicked_branch_link"] = "true" as object;
                                }
                                else
                                {
                                    metaTemp["+clicked_branch_link"] = "false" as object;
                                }
                            }

                            metadata.loadFromDictionary(metaTemp);
                        }
                    }
                }
            }
        }

        public Dictionary<string, object> ToDictionary()
        {
            var data = new Dictionary<string, object>();

            data.Add("$canonical_identifier", canonicalIdentifier);
            data.Add("$canonical_url", canonicalUrl);
            data.Add("$og_title", title);
            data.Add("$og_description", contentDescription);
            data.Add("$og_image_url", imageUrl);
            data.Add("$publicly_indexable", contentIndexMode.ToString());
            data.Add("$locally_indexable", localIndexMode.ToString());
            data.Add("$exp_date", expirationDate.HasValue ? (expirationDate.Value.Ticks / 10000).ToString() : "0"); // ticks to milliseconds
            data.Add("$keywords", keywords);
            data.Add("metadata", metadata.ToJsonString());

            return data;
        }

        public string ToJsonString()
        {
            var data = new Dictionary<string, object>();

            data.Add("$canonical_identifier", canonicalIdentifier);
            data.Add("$canonical_url", canonicalUrl);
            data.Add("$og_title", title);
            data.Add("$og_description", contentDescription);
            data.Add("$og_image_url", imageUrl);
            data.Add("$publicly_indexable", contentIndexMode.ToString());
            data.Add("$locally_indexable", localIndexMode.ToString());
            data.Add("$exp_date", expirationDate.HasValue ? (expirationDate.Value.Ticks / 10000).ToString() : "0"); // ticks to milliseconds
            data.Add("$keywords", keywords);
            data.Add("metadata", metadata.ToJsonString());

            return JsonConvert.SerializeObject(data);
        }
    }
}