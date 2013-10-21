using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace WpfBasicContacts
{
    public class TodoVM : BaseVM
    {

        #region "Constructor"
        public TodoVM()
        {
            //List = new ObservableCollection<string>();
            List = new ObservableCollection<TodoItem>();
            _addCommand = new DelegateCommand(AddTodo, () => Text != null && Text.Length > 0);
        }
        #endregion

        // Change it the real Get and Set as part of the real property
        //public string Text { get; set; }

        private string _text;

        public string Text
        {
            get { return _text; }
            set
            {
                _text = value;
                OnPropertyChanged("Text");
                _addCommand.OnCanExecuteChanged();
            }
        }
        //public ObservableCollection<string> List { get; set; }
        public ObservableCollection<TodoItem> List { get; set; }

        private DelegateCommand _addCommand;

        public DelegateCommand AddCommand
        {
            get { return _addCommand; }
        }


        // This will inherit from BaseVM
        //public event PropertyChangedEventHandler PropertyChanged; 



        public void AddTodo()
        {
            //List.Add(Text);

            List.Add(new TodoItem { Title = Text });
            this.Text = string.Empty;
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

    public class DelegateCommand : ICommand
    {
        private Action _action;
        private Func<bool> _canExecute;

        #region "Constructor"
        public DelegateCommand(Action action, Func<bool> canExecute = null)
        {
            _action = action;
            _canExecute = canExecute;
        }
        #endregion

        public bool CanExecute(object parameter)
        {
            if (_canExecute == null)
            {
                return true;
            }
            else
            {
                return _canExecute();
            }
        }

        public event EventHandler CanExecuteChanged;

        public void OnCanExecuteChanged()
        {
            if (CanExecuteChanged != null) CanExecuteChanged(this, new EventArgs());
        }

        public void Execute(object parameter)
        {
            _action();
        }
    }
}
