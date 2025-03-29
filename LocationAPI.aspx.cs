using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using Newtonsoft.Json;
using Microsoft.Ajax.Utilities;
using System.Net.Http;
using System.Configuration;
using System.Net;

namespace WebApplication1
{
    public partial class LocationAPI : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string apiKey = ConfigurationManager.AppSettings["CSC_API_KEY"];
                string apiUrl = "https://api.countrystatecity.in/v1/countries";  // Set the API endpoint for countries
                using (HttpClient client = new HttpClient()) // Use HttpClient to get the live data
                {
                    client.DefaultRequestHeaders.Add("X-CSCAPI-KEY", apiKey);  // Add the required API key header
                    try
                    {
                        HttpResponseMessage response = client.GetAsync(apiUrl).Result;
                        if (response.IsSuccessStatusCode)
                        {
                            string responseContent = response.Content.ReadAsStringAsync().Result;
                            List<Country> countries = JsonConvert.DeserializeObject<List<Country>>(responseContent);
                            ddlCountry.DataSource = countries;
                            ddlCountry.DataTextField = "name";
                            ddlCountry.DataValueField = "iso2";
                            ddlCountry.DataBind();
                        }
                        else
                        {
                            ddlCountry.Items.Clear();
                            ddlCountry.Items.Insert(0, new ListItem("Unable to load countries", ""));
                        }
                    }
                    catch (Exception ex)
                    {
                        ddlCountry.Items.Clear();
                        ddlCountry.Items.Insert(0, new ListItem("Error loading countries", ""));
                    }
                }
            }
        }
        public class Country
        {
            public string id { get; set; }
            public string name { get; set; }
            public string iso2 { get; set; }
        }

        protected void ddlCountry_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedCountry = ddlCountry.SelectedValue;
            string apiUrl = string.Empty;
            string apiKey = ConfigurationManager.AppSettings["CSC_API_KEY"];
            ddlState.Items.Clear();
            ddlState.Items.Insert(0, new ListItem("Select a state", ""));
            ddlCity.Items.Clear();
            ddlCity.Items.Insert(0, new ListItem("Select a city", ""));
            if(!string.IsNullOrEmpty(selectedCountry))
            {
                apiUrl = $"https://api.countrystatecity.in/v1/countries/{selectedCountry}/states";
            }
            if (!string.IsNullOrEmpty(apiUrl))
            {
                using (HttpClient client = new HttpClient())
                {
                    client.DefaultRequestHeaders.Add("X-CSCAPI-KEY", apiKey);
                    var response = client.GetStringAsync(apiUrl).Result;
                    List<State> states = JsonConvert.DeserializeObject<List<State>>(response);
                    ddlState.DataSource = states;
                    ddlState.DataTextField = "name";
                    ddlState.DataValueField = "iso2";
                    ddlState.DataBind();
                }
            }
        }


        public class State
        {
            public string id { get; set; }
            public string countryIso2 { get; set; }
            public string name { get; set; }
            public string iso2 { get; set; }
        }

        public class City
        {
            public string id { get; set; }
            public string name { get; set; }
            public string state { get; set; }
        }


        protected void ddlState_SelectedIndexChanged1(object sender, EventArgs e)
        {
            string selectedCountry = ddlCountry.SelectedValue;
            string selectedState = ddlState.SelectedValue;
            string apiUrl = string.Empty;
            string apiKey = ConfigurationManager.AppSettings["CSC_API_KEY"];

            ddlCity.Items.Clear();
            ddlCity.Items.Insert(0, new ListItem("Select a city", ""));

            if(!string.IsNullOrEmpty(selectedCountry) && !string.IsNullOrEmpty(selectedState))
            {
                apiUrl = $"https://api.countrystatecity.in/v1/countries/{selectedCountry}/states/{selectedState}/cities";
            }
            try
            {
                if (!string.IsNullOrEmpty(apiUrl))
                {
                    using (HttpClient client = new HttpClient())
                    {
                        client.DefaultRequestHeaders.Add("X-CSCAPI-KEY", apiKey);
                        HttpResponseMessage response = client.GetAsync(apiUrl).Result;
                        if (response.IsSuccessStatusCode)
                        {
                            string responseContent = response.Content.ReadAsStringAsync().Result;
                            List<City> cities = JsonConvert.DeserializeObject<List<City>>(responseContent);
                            ddlCity.DataSource = cities;
                            ddlCity.DataTextField = "name";
                            ddlCity.DataValueField = "id";
                            ddlCity.DataBind();
                        }
                        else
                        {
                            ddlCity.Items.Insert(0, new ListItem("Error loading cities", ""));
                        }
                    }
                }
            }
            catch (Exception)
            {
                ddlCity.Items.Insert(0, new ListItem("Error fetching data", ""));
            }
            }
        //    }
        //}
    }
}

   


   