using HomestayAppLibrary.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using Microsoft.Extensions.DependencyInjection;
using HomestayAppLibrary.Models;

namespace HomestayApp.Desktop
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private readonly ISqlData _db;

        public MainWindow(ISqlData db)
        {
            InitializeComponent();
            _db = db;
        }

        private void search_Click(object sender, RoutedEventArgs e)
        {
           var results=  _db.searchBookings(firstNameText.Text, lastNameText.Text, int.Parse(bookingText.Text));
            resultsList.ItemsSource = results;
        }

        private void checkIn_Click(object sender, RoutedEventArgs e)
        {
            var checkInForm = App.serviceProvider.GetService<CheckIn>();
            var model =(WPFResultsModel)((Button)e.Source).DataContext;
            checkInForm.PopulateCheckInInfo(model);
            checkInForm.Show();
        }
    }
}
