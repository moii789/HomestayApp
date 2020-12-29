using System;
using System.Collections.Generic;
using System.Text;

namespace HomestayAppLibrary.Models
{
    class HomestayTypeModel
    {
        public int id { get; set; }

        public string title { get; set; }

        public string description { get; set; }
        public string amenities { get; set; }

        public decimal price { get; set; }
    }
}
