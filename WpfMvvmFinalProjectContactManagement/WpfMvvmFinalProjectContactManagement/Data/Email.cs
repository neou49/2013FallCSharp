//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WpfMvvmFinalProjectContactManagement.Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class Email
    {
        public int Id { get; set; }
        public int Contact_Id { get; set; }
        public int EmailType_Id { get; set; }
        public string Value { get; set; }
        public System.DateTime CreatedDate { get; set; }
        public string CreatedBy { get; set; }
        public System.DateTime UpdatedDate { get; set; }
        public string UpdatedBy { get; set; }
    
        public virtual Contact Contact { get; set; }
        public virtual EmailType EmailType { get; set; }
    }
}
