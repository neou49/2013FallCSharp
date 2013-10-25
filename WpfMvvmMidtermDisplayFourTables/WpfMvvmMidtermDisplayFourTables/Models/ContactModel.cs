using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Collections.ObjectModel;

namespace WpfMvvmMidtermDisplayFourTables
{
    public class ContactModel : BaseVM
    {

        #region "Constructor"
        public ContactModel()
        {
            this._table1List = new ObservableCollection<Data.Models.Contact>();
            this._table2List = new ObservableCollection<Data.Models.Nationality>();
            this._table3List = new ObservableCollection<Data.Models.EducationLevel>();
            this._table4List = new ObservableCollection<Data.Models.Occupation>();
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


        private ObservableCollection<Data.Models.Contact> _table1List;
        public ObservableCollection<Data.Models.Contact> Table1List
        {
            get { return _table1List; }
            set
            {
                _table1List = value;
                OnPropertyChanged("Table1List");
            }
        }

        private string _table2Count;
        public string Table2Count
        {
            get { return _table2Count; }
            set
            {
                _table2Count = value;
                OnPropertyChanged("Table1List");
            }
        }


        private ObservableCollection<Data.Models.Nationality> _table2List;
        public ObservableCollection<Data.Models.Nationality> Table2List
        {
            get { return _table2List; }
            set
            {
                _table2List = value;
                OnPropertyChanged("Table2List");
            }
        }


        private string _table3Count;
        public string Table3Count
        {
            get { return _table3Count; }
            set
            {
                _table3Count = value;
                OnPropertyChanged("Table1List");
            }
        }


        private ObservableCollection<Data.Models.EducationLevel> _table3List;
        public ObservableCollection<Data.Models.EducationLevel> Table3List
        {
            get { return _table3List; }
            set
            {
                _table3List = value;
                OnPropertyChanged("Table3List");
            }
        }


        private string _table4Count;

        public string Table4Count
        {
            get { return _table4Count; }
            set
            {
                _table4Count = value;
                OnPropertyChanged("Table1List");
            }
        }


        private ObservableCollection<Data.Models.Occupation> _table4List;
        public ObservableCollection<Data.Models.Occupation> Table4List
        {
            get { return _table4List; }
            set
            {
                _table4List = value;
                OnPropertyChanged("Table4List");
            }
        }

    }

   public class BaseVM : INotifyPropertyChanged
   {
       public event PropertyChangedEventHandler PropertyChanged;

       public void OnPropertyChanged([CallerMemberName]string propertyName = null)
       {
           if (PropertyChanged != null)
               PropertyChanged(this, new PropertyChangedEventArgs(propertyName));

       }
   }

}
