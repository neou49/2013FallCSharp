using DataLayer.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.Entity;

namespace WpfBasicContacts
{
   public    class ContactsVM: BaseVM
    {
       public ContactsVM()
       {
           AddCommand = new DelegateCommand(
               () => {
                   Contacts.Add(new Contact { FirstName = this.FirstName});
                    FirstName = null;
               },
           () => !String.IsNullOrWhiteSpace(FirstName)
               );

           var db = new CSharpContext();
           Contacts = db.Contacts.Local;
           db.Contacts.LoadAsync();
       }

       private string _firstName;              
       public string FirstName
       {
           get { return _firstName; }
           set { _firstName = value; }
       }

       public DelegateCommand AddCommand { get; private set; }

       public ObservableCollection<Contact> Contacts { get; private set; }
        
    }
}