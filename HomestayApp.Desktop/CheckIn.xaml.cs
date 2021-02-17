using HomestayAppLibrary.Data;
using HomestayAppLibrary.Models;
using System;
using System.Collections.Generic;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace HomestayApp.Desktop
{
    /// <summary>
    /// Interaction logic for CheckIn.xaml
    /// </summary>
    public partial class CheckIn : Window
    {
        private WPFResultsModel _model;
        private ISqlData _db;

        public CheckIn(ISqlData db)
        {
            InitializeComponent();
            _db = db;
        }

        public void PopulateCheckInInfo(WPFResultsModel model)
        {
            _model = model;
            firstNameText.Text = _model.firstName;
            lastNameText.Text =_model.lastName;
            homestayName.Text = _model.homestayName;
            homestayLocation.Text =_model.locationName;

        }

        private void ConfirmCheckIn_Click(object sender, RoutedEventArgs e)
        {
            _db.CheckInGuest(_model.bookingId);
            this.Close();
        }
    }
}
