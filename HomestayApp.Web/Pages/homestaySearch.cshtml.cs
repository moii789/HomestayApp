using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;
using HomestayAppLibrary.Data;
using HomestayAppLibrary.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace HomestayApp.Web.Pages
{
    public class homestaySearchModel : PageModel
    {
        private readonly ISqlData _db;

        [DataType(DataType.Date)]
        [BindProperty(SupportsGet = true)]
        public DateTime ArrivalDate { get; set; } = DateTime.Now;

        [DataType(DataType.Date)]
        [BindProperty(SupportsGet = true)]
        public DateTime DepartureDate { get; set; } = DateTime.Now.AddDays(1);

        [DataType(DataType.Text)]
        [BindProperty(SupportsGet = true)]
        public String location { get; set; }

        [BindProperty(SupportsGet = true)]
        public bool SearchEnabled { get; set; } = false;
        public List<DisplayedResultsModel> AvailableHomestays { get; set; }

        public homestaySearchModel(ISqlData db)
        {
            _db = db;
        }
        public void OnGet()
        {
            if (SearchEnabled)
            {
                AvailableHomestays = _db.getAvailableHomestays(ArrivalDate, DepartureDate, location);
            }
        }

        public IActionResult OnPost()
        {
            return RedirectToPage(new { SearchEnabled = true, ArrivalDate = ArrivalDate, DepartureDate = DepartureDate, location= location });
        }
    }
}
