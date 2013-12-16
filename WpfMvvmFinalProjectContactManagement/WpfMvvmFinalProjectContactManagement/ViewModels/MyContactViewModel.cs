using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WpfMvvmFinalProjectContactManagement.Data;
using WpfMvvmFinalProjectContactManagement.Data.Models;


namespace WpfMvvmFinalProjectContactManagement
{
    public class MyContactViewModel : MyContactModel
    {

        #region "Constructor"
        public MyContactViewModel()
        {
            this.GetAllRecords();
        }
        #endregion

        public void GetAllRecords()
        {
            using (var db = new CSharpFall2013Entities())
            {

                var myContact = db.Contacts.Select(x => new Data.Models.Contact{
                     Id = x.Id,
                     FirstName = x.FirstName,
                     LastName = x.LastName,
                     DateOfBirth = x.DateOfBirth,
                     Gender_Id = x.Gender_Id,
                     Nationality_Id = x.Nationality_Id,
                     EducationLevel_Id = x.EducationLevel_Id,
                     CurrentOccupation_Id = x.CurrentOccupation_Id,
                     CreatedDate = x.CreatedDate,
                     CreatedBy = x.CreatedBy,
                     UpdatedDate = x.UpdatedDate,
                     UpdatedBy = x.UpdatedBy
                });
                if (myContact != null)
                {
                    this.Table1Count = Properties.Resources.Label_Table1 + myContact.Count();
                    foreach (var contact in myContact)
                    {
                    
                        this.MyContactNameList.Add(new ContactName{ Id = contact.Id, 
                            FirstName = contact.FirstName, 
                            LastName = contact.LastName, 
                            DateOfBirth = contact.DateOfBirth.ToShortDateString() });
                    }
                }

             
            }

        }

        public void DataGridMyContactNameSelectionChanged()
        {
            
        }

    }
}