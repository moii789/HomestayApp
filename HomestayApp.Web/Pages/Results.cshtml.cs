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
    public class ResultsModel : PageModel


    {
        private readonly ISqlData _db;

        public ResultsModel(ISqlData db)
        {
            _db = db;
        }

        [DataType(DataType.Date)]
        [BindProperty(SupportsGet = true)]
        public DateTime ArrivalDate { get; set; } = DateTime.Now;

        [DataType(DataType.Date)]
        [BindProperty(SupportsGet = true)]
        public DateTime DepartureDate { get; set; } = DateTime.Now.AddDays(1);

        [DataType(DataType.Text)]
        [BindProperty(SupportsGet = true)]
        public String location { get; set; }

        public List<DisplayedResultsModel> AvailableHomestays { get; set; }
        
        public void OnGet()
        {
            AvailableHomestays = _db.getAvailableHomestays(ArrivalDate, DepartureDate, location);
        }
    }
}
