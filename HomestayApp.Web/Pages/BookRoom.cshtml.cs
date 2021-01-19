using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;
using HomestayAppLibrary.Data;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace HomestayApp.Web.Pages
{
    public class BookRoomModel : PageModel
    {
        public readonly ISqlData _db;

        public BookRoomModel(ISqlData db)
        {
            _db = db;
        }
        [DataType(DataType.Text)]
        [BindProperty(SupportsGet = true)]
        public String firstName { get; set; }

        [DataType(DataType.Text)]
        [BindProperty(SupportsGet = true)]
        public String lastName { get; set; }

        [DataType(DataType.EmailAddress)]
        [BindProperty(SupportsGet = true)]
        public String email { get; set; }

        [DataType(DataType.Text)]
        [BindProperty(SupportsGet = true)]
        public String phoneNumber { get; set; }

        [DataType(DataType.Date)]
        [BindProperty(SupportsGet = true)]
        public DateTime arrivalDate { get; set; }

        [DataType(DataType.Date)]
        [BindProperty(SupportsGet = true)]
        public DateTime departureDate { get; set; }

        [DataType(DataType.Text)]
        [BindProperty(SupportsGet = true)]
        public String name { get; set; }
        public void OnGet()
        {
            
        }

        public IActionResult OnPost()
        {
            _db.bookGuest(firstName, lastName, email, phoneNumber, arrivalDate, departureDate, name);
            return RedirectToPage("/Thankyou");//booking confirmation page

        }
    }
}
