using HomestayAppLibrary.Databases;
using HomestayAppLibrary.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace HomestayAppLibrary.Data
{
    public class SqlData : ISqlData
    {
        private readonly IDataAccess _db;

        private const string connectionStringName = "SqlDB";

        public SqlData(IDataAccess db)
        {
            _db = db;
        }

        public List<DisplayedResultsModel> getAvailableHomestays(DateTime arrivalDate, DateTime departureDate, String location)

        {
           
            var x = _db.LoadData<DisplayedResultsModel, dynamic>("dbo.sp_GetAvailableHomestays",
                                                         new { arrivalDate, departureDate, location },
                                                         connectionStringName,
                                                        true);
            return x;
        }

        public void bookGuest(String firstName, string lastName, string email, string phoneNumber, DateTime arrivalDate, DateTime departureDate, string homestayName)
        {
            GuestModel guest = _db.LoadData<GuestModel, dynamic>("dbo.spBookings_GetGuest",
                                                         new { firstName, lastName, email, phoneNumber },
                                                         connectionStringName,
                                                        true).First();

            HomestayModel homestay = _db.LoadData<HomestayModel, dynamic>("dbo.spBookings_GetHomestay",
                                                         new { homestayName },
                                                         connectionStringName,
                                                        true).First();

            TimeSpan totalStay = departureDate.Date.Subtract(arrivalDate.Date);

            HomestayTypeModel homestayType = _db.LoadData<HomestayTypeModel, dynamic>("dbo.spBookings_GetHomestayType",
                                                         new { homestay.id },
                                                         connectionStringName,
                                                        true).First();

            _db.SaveData<BookingModel, dynamic>("spBookings_Insert",
                        new
                        {
                            guestId = guest.id,
                            homestayId = homestay.id,
                            arrivalDate = arrivalDate,
                            departureDate = departureDate,
                            price = totalStay.Days * homestayType.price
                        },
                        connectionStringName,
                        true);
        }

        public List<BookingModel> searchBookings(int bookingId)
        {
            return _db.LoadData<BookingModel, dynamic>("dbo.spBookings_GetBooking", new { bookingId }, connectionStringName, true);
        }
    }
}
