using System;
using System.Collections.Generic;
using System.Text;

namespace HomestayAppLibrary.Models
{
    class HomestayModel
    {
        public int id { get; set; }
        public int locationId { get; set; }

        public int homestayTypeId { get; set; }

        public int hostId { get; set; }

        public string name { get; set; }
    }
}
