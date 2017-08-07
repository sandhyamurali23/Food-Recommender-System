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
using Npgsql;

namespace FoodRecomender
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void comboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }
        private void button1_Click(object sender, RoutedEventArgs e) {
            List<Item> s = new List<Item>();
            grid1.ItemsSource = s;
            comboBox.Text = "Please Select";
        }
        private void button_Click(object sender, RoutedEventArgs e)
        {
            String text = comboBox.SelectionBoxItem.ToString();
            if (text != "Please Select")
            {
                using (var conn = new NpgsqlConnection("Host=localhost;Username=postgres;Password=parvathi;Database=postgres"))
                {
                    conn.Open();
                    using (var cmd = new NpgsqlCommand())
                    {
                        cmd.Connection = conn;
                        cmd.CommandText = "select \"productid\",AVG(\"score\")AS \"average\" from \"Review\" where \"productid\" IN (Select \"productid\" from \"Product\" where \"Category_Id\" = (Select \"Category_Id\" from \"Category\" where \"Category_Name\" = '" + text + "')) group by \"productid\" order by \"average\" desc";
                        List<Item> s = new List<Item>();
                        using (var reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                
                                Item items = new Item();
                                items.Products = reader.GetString(0);
                                //items.avg = Convert.ToInt32(reader.GetString(1));
                                s.Add(items);
                            }
                            grid1.ItemsSource = s;
                        }
                    }
                }
            }
            else {
                List<Item> s = new List<Item>();
                grid1.ItemsSource = s;
                MessageBox.Show("Select Valid category!");
            }
        }
    }
}
