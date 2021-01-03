using System;
using System.Collections.Generic;
using System.Text;

namespace HomestayAppLibrary.Models
{
    public class BookingModel
    {
        public int Id { get; set; }

        public int guestId { get; set; }

        public int homestayId { get; set; }

        public DateTime arrivalDate { get; set; }

        public DateTime departureDate { get; set; }

        public decimal price { get; set; }

    }
}
