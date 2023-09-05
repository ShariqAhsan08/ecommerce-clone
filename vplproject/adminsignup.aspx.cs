using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vplproject
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        string connectionString = "Data Source=DESKTOP-OUSVPR2\\SQLEXPRESS;Initial Catalog=master;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string AdName = TextBox1.Text;
            string ademail = TextBox2.Text;
            string pass = TextBox3.Text;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                string query = "INSERT INTO admin (AdName,ademail, pass) VALUES (@AdName, @ademail , @pass)";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@AdName", AdName);
                    command.Parameters.AddWithValue("@ademail", ademail);
                    command.Parameters.AddWithValue("@pass", pass);
                    // string hashedPasswordFromDB = (string)command.ExecuteScalar();



                    command.ExecuteNonQuery();


                    Response.Redirect("adminlogin.aspx");

                }
            }
        }
    }
}




