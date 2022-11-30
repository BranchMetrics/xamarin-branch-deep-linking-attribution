using System;
using System.Collections.Generic;
using Newtonsoft.Json;

namespace BranchXamarinSDK
{
    public class BranchQRCodeSettings
    {

        public string codeColor;
        public string backgroundColor;
        public int margin;
        public int width;
        public string imageFormat;
        public string centerLogoUrl;
        public int codePattern;
        public int finderPattern;
        public string finderPatternColor;
        public string backgroundImageUrl;
        public int backgroundImageOpacity;
        public string codePatternUrl;
        public string finderEyeColor;


        public BranchQRCodeSettings()
        {
            codeColor = "";
            backgroundColor = "";
            margin = 0;
            width = 0;
            imageFormat = "";
            centerLogoUrl = "";
            codePattern = 0;
            finderPattern = 0;
            finderPatternColor = "";
            backgroundImageUrl = "";
            backgroundImageOpacity = 0;
            codePatternUrl = "";
            finderEyeColor = "";

        }

        public BranchQRCodeSettings(string json)
        {
            codeColor = "";
            backgroundColor = "";
            margin = 0;
            width = 0;
            imageFormat = "";
            centerLogoUrl = "";
            codePattern = 0;
            finderPattern = 0;
            finderPatternColor = "";
            backgroundImageUrl = "";
            backgroundImageOpacity = 0;
            codePatternUrl = "";
            finderEyeColor = "";

            loadFromJson(json);
        }

        public BranchQRCodeSettings(Dictionary<string, object> data)
        {
            codeColor = "";
            backgroundColor = "";
            margin = 0;
            width = 0;
            imageFormat = "";
            centerLogoUrl = "";
            codePattern = 0;
            finderPattern = 0;
            finderPatternColor = "";
            backgroundImageUrl = "";
            backgroundImageOpacity = 0;
            codePatternUrl = "";
            finderEyeColor = "";

            loadFromDictionary(data);
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

           
            if (data.ContainsKey("codeColor"))
            {
                codeColor = data["codeColor"].ToString();
            }
            if (data.ContainsKey("backgroundColor"))
            {
                backgroundColor = data["backgroundColor"].ToString();
            }
            if (data.ContainsKey("margin"))
            {
                if (!string.IsNullOrEmpty(data["margin"].ToString()))
                {
                    margin = Convert.ToInt32(data["margin"].ToString());
                }
            }
            if (data.ContainsKey("width"))
            {
                if (!string.IsNullOrEmpty(data["width"].ToString()))
                {
                    width = Convert.ToInt32(data["width"].ToString());
                }
            }
            if (data.ContainsKey("imageFormat"))
            {
                imageFormat = data["imageFormat"].ToString();
            }
            if (data.ContainsKey("centerLogoUrl"))
            {
                centerLogoUrl = data["centerLogoUrl"].ToString();
            }
            if (data.ContainsKey("codePattern"))
            {
                if (!string.IsNullOrEmpty(data["codePattern"].ToString()))
                {
                    codePattern = Convert.ToInt32(data["codePattern"].ToString());
                }
            }
            if (data.ContainsKey("finderPattern"))
            {
                if (!string.IsNullOrEmpty(data["finderPattern"].ToString()))
                {
                    finderPattern = Convert.ToInt32(data["finderPattern"].ToString());
                }
            }
            if (data.ContainsKey("finderPatternColor"))
            {
                finderPatternColor = data["finderPatternColor"].ToString();
            }
            if (data.ContainsKey("backgroundImageUrl"))
            {
                backgroundImageUrl = data["backgroundImageUrl"].ToString();
            }
            if (data.ContainsKey("backgroundImageOpacity"))
            {
                if (!string.IsNullOrEmpty(data["backgroundImageOpacity"].ToString()))
                {
                    backgroundImageOpacity = Convert.ToInt32(data["backgroundImageOpacity"].ToString());
                }
            }
            if (data.ContainsKey("codePatternUrl"))
            {
                codePatternUrl = data["codePatternUrl"].ToString();
            }
            if (data.ContainsKey("finderEyeColor"))
            {
                finderEyeColor = data["finderEyeColor"].ToString();
            }


        }

        public Dictionary<string, object> ToDictionary()
        {
            var data = new Dictionary<string, object>();

            data.Add("codeColor", codeColor);
            data.Add("backgroundColor", backgroundColor);
            data.Add("margin", margin.ToString());
            data.Add("width", width.ToString());
            data.Add("imageFormat", imageFormat);
            data.Add("centerLogoUrl", centerLogoUrl);
            data.Add("codePattern", codePattern.ToString());
            data.Add("finderPattern", finderPattern.ToString());
            data.Add("finderPatternColor", finderPatternColor);
            data.Add("backgroundImageUrl", backgroundImageUrl);
            data.Add("backgroundImageOpacity", backgroundImageOpacity.ToString());
            data.Add("codePatternUrl", codePatternUrl);
            data.Add("finderEyeColor", finderEyeColor);

            return data;
        }

        public string ToJsonString()
        {
            var data = ToDictionary();
            return JsonConvert.SerializeObject(data);
        }
    }
}