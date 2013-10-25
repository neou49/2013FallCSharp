using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using System.ComponentModel;

namespace WpfBasicContacts
{
    /// <summary>
    /// Interaction logic for BasicContacts.xaml
    /// </summary>
    public partial class BasicContacts : Window
    {
        public BasicContacts()
        {
            InitializeComponent();

            DataContext = new ContactsVM();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {

            System.Windows.Data.CollectionViewSource contactViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("contactViewSource")));
            // Load data by setting the CollectionViewSource.Source property:
            // contactViewSource.Source = [generic data source]
            System.Windows.Data.CollectionViewSource contactsVMViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("contactsVMViewSource")));
            // Load data by setting the CollectionViewSource.Source property:
            // contactsVMViewSource.Source = [generic data source]
            System.Windows.Data.CollectionViewSource contactViewSource = ((System.Windows.Data.CollectionViewSource)(this.FindResource("contactViewSource")));
            // Load data by setting the CollectionViewSource.Source property:
            // contactViewSource.Source = [generic data source]
        }
    }
}
