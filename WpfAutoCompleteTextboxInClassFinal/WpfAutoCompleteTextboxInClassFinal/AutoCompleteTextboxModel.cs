using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WpfAutoCompleteTextboxInClassFinal
{
    public class AutoCompleteTextboxModel : BaseViewModel
    {

        public AutoCompleteTextboxModel()
        {
            this._cityList = new List<string>();
        }

        private List<string> _cityList;
        public List<string> CityList
        {
            get { return _cityList; }
            set
            {
                _cityList = value;
                NotifyPropertyChanged("CityList");
            }
        }

        private string _selectedCity;
        public string SelectedCity
        {
            get { return _selectedCity; }
            set
            {
                _selectedCity = value;
                NotifyPropertyChanged("SelectedCity");
            }
        }
    }

}
