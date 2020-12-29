using System;
using System.Collections.Generic;
using System.Text;

namespace HomestayAppLibrary.Models
{
    class DisplayedResultsModel
    {
        public int id { get; set; }
        public string name { get; set; }

        public string homestayType { get; set; }

        public string homestayTypeDescription { get; set; }

        public Decimal price { get; set; }

        public string firstNameHost { get; set; }

        public string lastNameHost { get; set; }

        //add picture stuff later
    }
}
