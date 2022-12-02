using System;
using System.Collections.Generic;
using Newtonsoft.Json;

namespace BranchXamarinSDK
{
    public class BranchQRCodeSettings
    {
        public enum CodePattern
        {
            Standard,
            Squares,
            Circles,
            Triangles,
            Diamonds,
            Hexagons,
            Octagons
        }

        public enum FinderPattern
        {
            Square,
            RoundedRectangle,
            Circle
        }

        public enum ImageFormat
        {
            JPEG,
            PNG,
        }

        public string codeColor;
        public string backgroundColor;
        public int margin;
        public int width;
        public ImageFormat imageFormat;
        public string centerLogoUrl;
        public CodePattern codePattern;
        public FinderPattern finderPattern;
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
            imageFormat = ImageFormat.PNG;
            centerLogoUrl = "";
            codePattern = CodePattern.Standard;
            finderPattern = FinderPattern.Square;
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
            imageFormat = ImageFormat.PNG;
            centerLogoUrl = "";
            codePattern = CodePattern.Standard;
            finderPattern = FinderPattern.Square;
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
            imageFormat = ImageFormat.PNG;
            centerLogoUrl = "";
            codePattern = CodePattern.Standard;
            finderPattern = FinderPattern.Square;
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
                imageFormat = (ImageFormat)data["imageFormat"];
            }
            if (data.ContainsKey("centerLogoUrl"))
            {
                centerLogoUrl = data["centerLogoUrl"].ToString();
            }
            if (data.ContainsKey("codePattern"))
            {
                codePattern = (CodePattern)data["codePattern"];
            }
            if (data.ContainsKey("finderPattern"))
            {
                finderPattern = (FinderPattern)data["finderPattern"];
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
            data.Add("imageFormat", imageFormat.ToString());
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