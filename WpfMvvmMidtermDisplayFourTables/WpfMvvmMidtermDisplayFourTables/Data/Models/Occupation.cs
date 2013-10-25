using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WpfMvvmMidtermDisplayFourTables.Data.Models
{
    public class Occupation
    {
        public int Id { get; set; }
        public string Value { get; set; }
        public string Description { get; set; }
        public int OccupationType_Id { get; set; }
        public System.DateTime CreatedDate { get; set; }
        public System.DateTime UpdatedDate { get; set; }
    }
}
