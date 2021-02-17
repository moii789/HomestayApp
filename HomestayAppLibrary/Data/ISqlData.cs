using HomestayAppLibrary.Models;
using System;
using System.Collections.Generic;

namespace HomestayAppLibrary.Data
{
    public interface ISqlData
    {
        void bookGuest(string firstName, string lastName, string email, string phoneNumber, DateTime arrivalDate, DateTime departureDate, string homestayName);
        void CheckInGuest(int id);
        List<DisplayedResultsModel> getAvailableHomestays(DateTime arrivalDate, DateTime departureDate, string location);
        List<WPFResultsModel> searchBookings(string firstName, string lastName, int Id);
    }
}