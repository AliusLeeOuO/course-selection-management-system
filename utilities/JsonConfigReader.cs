using System;
using Newtonsoft.Json.Linq;
using System.IO;

namespace WebApplication2.utilities
{
    public static class JsonConfigReader
    {
        public static string GetConnectionString()
        {
            string filePath = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "appsettings.json");
            string json = File.ReadAllText(filePath);
            var jObject = JObject.Parse(json);
            return jObject["DatabaseConfig"]["ConnectionString"].ToString();
        }
    }
}