using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace vplproject
{
    public partial class signup1 : System.Web.UI.Page
    {
        string connectionString = "Data Source=DESKTOP-OUSVPR2\\SQLEXPRESS;Initial Catalog=master;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string cusname = TextBox1.Text;
            string cusemail = TextBox2.Text;
            string Pass = TextBox3.Text;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                string query = "INSERT INTO custable (cusname,cusemail, Pass) VALUES (@cusname, @cusemail , @Pass)";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@cusname", cusname);
                    command.Parameters.AddWithValue("@cusemail", cusemail);
                    command.Parameters.AddWithValue("@Pass", Pass);
                    command.ExecuteNonQuery();

                    Response.Redirect("login1.aspx");


                }
            }
        }
    }
}


