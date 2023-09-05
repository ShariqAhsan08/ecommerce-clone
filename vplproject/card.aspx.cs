using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vplproject
{
    public partial class card : System.Web.UI.Page
    {
        private string connectionString = "Data Source=DESKTOP-OUSVPR2\\SQLEXPRESS;Initial Catalog=master;Integrated Security=True";
        private List<CartItem> cartItems = new List<CartItem>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Bind cart items to the repeater
                CartRepeater.DataSource = cartItems;
                CartRepeater.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            AddToCart("iphone", 2000);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            AddToCart("laptop", 5000);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            AddToCart("watch", 1000);
        }

        private void AddToCart(string itemName, int itemPrice)
        {
            cartItems.Add(new CartItem { pdname = itemName, price = itemPrice });

            // Refresh the repeater and calculate total
            CartRepeater.DataSource = cartItems;
            CartRepeater.DataBind();
            CalculateTotal();

            // Update the database
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query = "INSERT INTO cart (pdname, price) VALUES (@pdname, @price)";

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@pdname", itemName);
                    command.Parameters.AddWithValue("@price", itemPrice);
                    command.ExecuteNonQuery();
                }
            }
        }

        private void CalculateTotal()
        {
            int total = cartItems.Sum(item => item.price);
            TotalLabel.Text = "Total: $" + total;
        }

        private class CartItem
        {
            public string pdname { get; set; }
            public int price { get; set; }
        }
    }
}
