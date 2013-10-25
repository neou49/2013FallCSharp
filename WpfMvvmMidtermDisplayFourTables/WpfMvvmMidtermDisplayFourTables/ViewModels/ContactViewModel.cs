using System;
using System.Collections.Generic;
using System.Data.Objects;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WpfMvvmMidtermDisplayFourTables.Data;


namespace WpfMvvmMidtermDisplayFourTables
{
    public class ContactViewModel : ContactModel
    {

        #region "Constructor"
        public ContactViewModel()
        {
            this.GetAllRecords();
        }
        #endregion


        public void GetAllRecords()
        {
            using (var db = new CSharpFall2013Entities())
            {

                var table1Contact = db.Contacts.Select(x => new Data.Models.Contact{
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
                if (table1Contact != null)
                {
                    this.Table1Count = Properties.Resources.Label_Table1 + table1Contact.Count();
                    foreach (var contact in table1Contact)
                    {
                        this.Table1List.Add(contact);
                    }
                }

                var table2Nationality = db.Nationalities.Select(x => new Data.Models.Nationality{
                    Id = x.Id,
                    Value = x.Value,
                    CreatedDate = x.CreatedDate,
                    UpdatedDate = x.UpdatedDate
                });
                if (table2Nationality != null)
                {
                    this.Table2Count = Properties.Resources.Label_Table2 + table2Nationality.Count();
                    foreach (var nationality in table2Nationality)
                    {
                        this.Table2List.Add(nationality);
                    }
                }

                var table3EductationLevel = db.EducationLevels.Select(x => new Data.Models.EducationLevel
                {
                    Id = x.Id,
                    Value = x.Value,
                    CreatedDate = x.CreatedDate,
                    UpdatedDate = x.UpdatedDate
                });
                if (table3EductationLevel != null)
                {
                    this.Table3Count = Properties.Resources.Label_Table3 + table3EductationLevel.Count();
                    foreach (var educationLevel in table3EductationLevel)
                    {
                        this.Table3List.Add(educationLevel);
                    }
                }

                var table4Occupation = db.Occupations.Select(x => new Data.Models.Occupation
                {
                    Id = x.Id,
                    Value = x.Value,
                    CreatedDate = x.CreatedDate,
                    UpdatedDate = x.UpdatedDate
                });
                if (table4Occupation != null)
                {
                    this.Table4Count = Properties.Resources.Label_Table4 + table4Occupation.Count();
                    foreach (var occupation in table4Occupation)
                    {
                        this.Table4List.Add(occupation);
                    }
                }

            }

        }

    }
}