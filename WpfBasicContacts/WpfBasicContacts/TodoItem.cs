using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WpfBasicContacts
{
    public class TodoItem:BaseVM
    {
        private string _title;

        public string Title
        {
            get { return _title; }
            set { _title = value; OnPropertyChanged("Title"); }
        }

        private bool _done;

        public bool Done
        {
            get { return _done; }
            set { _done = value; OnPropertyChanged("Done"); }
        }

        private DateTime  _dueDate;

        public DateTime  DueDate
        {
            get { return _dueDate; }
            set { _dueDate = value; OnPropertyChanged("DueDate"); }
        }
        
        
    }
}
