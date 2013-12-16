using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Collections.ObjectModel;
using WpfMvvmFinalProjectContactManagement.Data.Models;

namespace WpfMvvmFinalProjectContactManagement
{
    public class MyContactModel : MyBaseVM
    {

        #region "Constructor"
        public MyContactModel()
        {
            this._myContactNameList = new ObservableCollection<Data.Models.ContactName>();
            this._genderList = new Dictionary<int, string>();
            this._educationLevelList = new Dictionary<int, string>();
            this._currentOccupationList = new Dictionary<int, string>();
            this._nationalityList = new Dictionary<int, string>();
        }
        #endregion


        private string _table1Count;
        public string Table1Count
        {
            get { return _table1Count; }
            set
            {
                _table1Count = value;
                OnPropertyChanged("Table1List");
            }
        }

        private ObservableCollection<Data.Models.ContactName> _myContactNameList;
        public ObservableCollection<Data.Models.ContactName> MyContactNameList
        {
            get { return _myContactNameList; }
            set
            {
                _myContactNameList = value;
                OnPropertyChanged("MyContactNameList");
            }
        }

        private ContactName _myContactNameSelectedItem;
        public ContactName MyContactNameSelectedItem
        {
            get { return _myContactNameSelectedItem; }
            set
            {
                _myContactNameSelectedItem = value;
                OnPropertyChanged("MyContactNameSelectedItem");
            }
        }

        private int _myContactNameSelectedIndex;
        public int MyContactNameSelectedIndex
        {
            get { return _myContactNameSelectedIndex; }
            set
            {
                _myContactNameSelectedIndex = value;
                OnPropertyChanged("MyContactNameSelectedIndex");
            }
        }

        private int _id;
        public int Id
        {
            get { return _id; }
            set
            {
                _id = value;
                OnPropertyChanged("ID");
            }
        }

        private string _firstName;
        public string FirstName
        {
            get { return _firstName; }
            set
            {
                _firstName = value;
                OnPropertyChanged("FirstName");
            }
        }

        private string _lastName;
        public string LastName
        {
            get { return _lastName; }
            set
            {
                _lastName = value;
                OnPropertyChanged("LastName");
            }
        }

        private DateTime _dateOfBirth;
        public DateTime DateOfBirth
        {
            get { return _dateOfBirth; }
            set
            {
                _dateOfBirth = value;
                OnPropertyChanged("DateOfBirth");
            }
        }

        private Dictionary<int,string> _genderList;
        public Dictionary<int, string> GenderList
        {
            get { return _genderList; }
            set
            {
                _genderList = value;
                OnPropertyChanged("GenderList");
            }
        }
        private KeyValuePair<int, string> _genderSelectedItem;
        public KeyValuePair<int, string> GenderSelectedItem
        {
            get { return _genderSelectedItem; }
            set
            {
                _genderSelectedItem = value;
                OnPropertyChanged("GenderSelectedItem");
            }
        }

        private Dictionary<int,string> _nationalityList;
        public Dictionary<int,string> NationalityList
        {
            get { return _nationalityList; }
            set
            {
                _nationalityList = value;
                OnPropertyChanged("NationalityList");
            }
        }
        private KeyValuePair<int, string> _nationalitySelectedItem;
        public KeyValuePair<int, string> NationalitySelectedItem
        {
            get { return _nationalitySelectedItem; }
            set
            {
                _nationalitySelectedItem = value;
                OnPropertyChanged("NationalitySelectedItem");
            }
        }


        private Dictionary<int,string> _educationLevelList;
        public Dictionary<int,string> EducationLevelList
        {
            get { return _educationLevelList; }
            set
            {
                _educationLevelList = value;
                OnPropertyChanged("EductationLevelList");
            }
        }
        private KeyValuePair<int, string> _educationLevelSelectedItem;
        public KeyValuePair<int, string> EducationLevelSelectedItem
        {
            get { return _educationLevelSelectedItem; }
            set
            {
                _educationLevelSelectedItem = value;
                OnPropertyChanged("EducationLevelSelectedItem");
            }
        }

        private Dictionary<int, string> _currentOccupationList;
        public Dictionary<int, string> CurrentOccupationList
        {
            get { return _currentOccupationList; }
            set
            {
                _currentOccupationList = value;
                OnPropertyChanged("CurrentOccupationList");
            }
        }
        private KeyValuePair<int,string> _currentOccupationSelectedItem;
        public KeyValuePair<int,string> CurrentOccupationSelectedItem
        {
            get { return _currentOccupationSelectedItem; }
            set
            {
                _currentOccupationSelectedItem = value;
                OnPropertyChanged("CurrentOccupationSelectedItem");
            }
        }

    }

   public class MyBaseVM : INotifyPropertyChanged
   {
       public event PropertyChangedEventHandler PropertyChanged;

       public void OnPropertyChanged([CallerMemberName]string propertyName = null)
       {
           if (PropertyChanged != null)
               PropertyChanged(this, new PropertyChangedEventArgs(propertyName));

       }

   }

}
