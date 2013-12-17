using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Web.Services;
using System.Web.Services.Description;

namespace WpfAutoCompleteTextboxInClassFinal
{

    public class AutoCompleteTextboxViewModel : AutoCompleteTextboxModel
    {

        #region "Constructor"
        public AutoCompleteTextboxViewModel()
        {
       
            Search();
        }
        #endregion


        public async void Search()
        {
            string uri = "http://cs.newpaltz.edu/~plotkinm/2012Grad/Final/api/Cities.php";

            HttpClient client = new HttpClient();
            HttpResponseMessage response = await client.GetAsync(uri);
            response.EnsureSuccessStatusCode();

            string returnString = await response.Content.ReadAsStringAsync();
            returnString = returnString.Replace('[', ' ');
            returnString = returnString.Replace(']', ' ');
            returnString = returnString.Replace("\",\"", "|");
            returnString = returnString.Replace("\"", "");
            returnString = returnString.Trim();
            List<string> splitString = returnString.Split('|').ToList();


            this.CityList = splitString;
                 

        }

    }

    public class BaseViewModel : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;

        public void NotifyPropertyChanged([CallerMemberName]string propertyName = null)
        {
            if (PropertyChanged != null)
                PropertyChanged(this, new PropertyChangedEventArgs(propertyName));

        }

    }
}
