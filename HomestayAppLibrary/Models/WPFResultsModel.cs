using System;
using System.Collections.Generic;
using System.Text;

namespace HomestayAppLibrary.Models
{
    public class WPFResultsModel
    {
        public int Id { get; set; }

        public String firstName { get; set; }

        public String lastName { get; set; }

        public DateTime arrivalDate { get; set; }

        public DateTime departureDate { get; set; }

        public String homestayName { get; set; }

        public String homestayTypeTitle { get; set; }

        public String locationName { get; set; }

        public String hostFirstName { get; set; }

        public String hostLastName { get; set; }

        public decimal totalCost { get; set; }

        public int bookingId { get; set; }


    }
}
