using System;
using System.Collections.Generic;
using System.Text;

namespace HomestayAppLibrary.Models
{
    public class DisplayedResultsModel
    {
        public int id { get; set; }
        public string name { get; set; }

        public string title { get; set; }

        public string description { get; set; }

        public Decimal price { get; set; }

        public string firstName { get; set; }

        public string lastName { get; set; }

        //add picture stuff later
    }
}
