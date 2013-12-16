using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Collections.ObjectModel;

namespace WpfMvvmFinalProjectContactManagement
{
    public class MyContactModel : MyBaseVM
    {

        #region "Constructor"
        public MyContactModel()
        {
            this._myContactNameList = new ObservableCollection<Data.Models.ContactName>();
          
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

        private List<string> _genderList;
        public List<string> GenderList
        {
            get { return _genderList; }
            set
            {
                _genderList = value;
                OnPropertyChanged("GenderList");
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
