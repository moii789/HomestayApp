using HomestayAppLibrary.Models;
using System;
using System.Collections.Generic;

namespace HomestayAppLibrary.Data
{
    public interface ISqlData
    {
        void bookGuest(string firstName, string lastName, string email, string phoineNumber, DateTime arrivalDate, DateTime departureDate, string homestayName);
        List<DisplayedResultsModel> getAvailableHomestays(DateTime arrivalDate, DateTime departureDate, string location);
        List<BookingModel> searchBookings(int bookingId);
    }
}