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
        private ObservableCollection<Data.Contact> _table1List;
        public ObservableCollection<Data.Contact> Table1List
        {
            get { return _table1List; }
            set
            {
                _table1List = value;
                OnPropertyChanged("Table1List");
            }
        }

        private ObservableCollection<Data.Nationality> _table2List;
        public ObservableCollection<Data.Nationality> Table2List
        {
            get { return _table2List; }
            set
            {
                _table2List = value;
                OnPropertyChanged("Table2List");
            }
        }


        private ObservableCollection<Data.EducationLevel> _table3List;
        public ObservableCollection<Data.EducationLevel> Table3List
        {
            get { return _table3List; }
            set
            {
                _table3List = value;
                OnPropertyChanged("Table3List");
            }
        }


        private ObservableCollection<Data.Occupation> _table4List;
        public ObservableCollection<Data.Occupation> Table4List
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
