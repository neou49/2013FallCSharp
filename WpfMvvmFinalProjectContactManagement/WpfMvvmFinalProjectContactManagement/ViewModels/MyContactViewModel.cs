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

        CSharpFall2013Entities _db = new CSharpFall2013Entities();

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
                    this.MyContactNameSelectedIndex = 0;
                }

                var genderList = db.Genders;
                if (genderList != null)
                {
                    foreach (var gender in genderList)
                        this.GenderList.Add(gender.Id, gender.Value);
                }

                var nationalityList = db.Nationalities;
                if (nationalityList != null)
                {
                    foreach (var nationality in nationalityList)
                        this.NationalityList.Add(nationality.Id, nationality.Value);
                }

                var educationLevelList = db.EducationLevels;
                if (educationLevelList != null)
                {
                    foreach (var educationLevel in educationLevelList)
                        this.EducationLevelList.Add(educationLevel.Id, educationLevel.Value);
                }

                var occupationList = db.Occupations;
                if (occupationList != null)
                {
                    foreach (var occupation in occupationList)
                        this.CurrentOccupationList.Add(occupation.Id, occupation.Value);
                }

             
            }

        }

        public void DataGridMyContactNameSelectionChanged()
        {
            var selectedContact = this._db.Contacts.Where(x => x.Id == this.MyContactNameSelectedItem.Id).FirstOrDefault();

            if (selectedContact!= null)
            {
                this.FirstName = selectedContact.FirstName;
                this.LastName = selectedContact.LastName;
                this.DateOfBirth = selectedContact.DateOfBirth;

                this.GenderSelectedItem = new KeyValuePair<int, string>(selectedContact.Gender.Id, selectedContact.Gender.Value);
                this.NationalitySelectedItem = new KeyValuePair<int, string>(selectedContact.Nationality.Id, selectedContact.Nationality.Value);
                this.EducationLevelSelectedItem = new KeyValuePair<int, string>(selectedContact.EducationLevel.Id, selectedContact.EducationLevel.Value);
                this.CurrentOccupationSelectedItem = new KeyValuePair<int, string>(selectedContact.Occupation.Id, selectedContact.Occupation.Value);
            }
        }

    }
}