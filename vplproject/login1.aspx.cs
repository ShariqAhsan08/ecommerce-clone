using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vplproject
{
    public partial class login1 : System.Web.UI.Page
    {
        string connectionString = "Data Source=DESKTOP-OUSVPR2\\SQLEXPRESS;Initial Catalog=master;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string cusname = TextBox1.Text;
            string pass = TextBox2.Text;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                string query = "SELECT *  FROM custable WHERE cusname = @cusname AND pass = @Pass";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@cusname", cusname);
                    command.Parameters.AddWithValue("@Pass", pass);


                    int count = (int)command.ExecuteScalar();

                    if(count >0)
                    {
                        Response.Redirect("index.html");
                    }
                    else

                    Response.Redirect("index.html");
                }
            }
        }
    }
}



