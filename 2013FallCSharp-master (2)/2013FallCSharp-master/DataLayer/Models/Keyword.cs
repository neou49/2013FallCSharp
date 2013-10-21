using System;
using System.Collections.Generic;

namespace DataLayer.Models
{
    public partial class Keyword
    {
        public Keyword()
        {
            this.ContactMethods = new List<ContactMethod>();
            this.Contacts = new List<Contact>();
            this.Children = new List<Keyword>();
        }

        public int Id { get; set; }
        public string Name { get; set; }
        public int KeywordsId { get; set; }
        public virtual ICollection<ContactMethod> ContactMethods { get; set; }
        public virtual ICollection<Contact> Contacts { get; set; }
        public virtual ICollection<Keyword> Children { get; set; }
        public virtual Keyword Parent { get; set; }
    }
}
