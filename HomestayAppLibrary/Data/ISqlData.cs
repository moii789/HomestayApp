using HomestayAppLibrary.Models;
using System;
using System.Collections.Generic;

namespace HomestayAppLibrary.Data
{
    interface ISqlData
    {
        void bookGuest(string firstName, string lastName, string email, DateTime arrivalDate, DateTime departureDate, string homestayName);
        List<DisplayedResultsModel> getAvailableHomestays(DateTime arrivalDate, DateTime departureDate, string location);
        List<BookingModel> searchBookings(int bookingId);
    }
}