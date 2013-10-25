using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WpfMvvmMidtermDisplayFourTables.Data.Models
{
   public class Contact
    {
        public int Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string MiddleName { get; set; }
        public System.DateTime DateOfBirth { get; set; }
        public int Gender_Id { get; set; }
        public int Nationality_Id { get; set; }
        public int EducationLevel_Id { get; set; }
        public int CurrentOccupation_Id { get; set; }
        public System.DateTime CreatedDate { get; set; }
        public string CreatedBy { get; set; }
        public System.DateTime UpdatedDate { get; set; }
        public string UpdatedBy { get; set; }
    }
}
