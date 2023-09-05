using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace vplproject
{
    public partial class adminview1 : System.Web.UI.Page
    {
        string connectionString = "Data Source=DESKTOP-OUSVPR2\\SQLEXPRESS;Initial Catalog=master;Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void Button2_Click(object sender, EventArgs e)
        {

            int Id = Convert.ToInt32(TextBox4.Text);

            using (SqlConnection con = new SqlConnection(connectionString))

            {
                con.Open();

                string query = "DELETE FROM custable WHERE Id = @Id";

                using (SqlCommand asd = new SqlCommand(query, con))
                {
                    asd.Parameters.AddWithValue("@Id", Id);

                    asd.ExecuteNonQuery();

                    GridView1.DataBind();
                    Label5.Text = ("Record Delete");
                }
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {

            int Id = Convert.ToInt32(TextBox5.Text);

            using (SqlConnection con = new SqlConnection(connectionString))

            {
                con.Open();

                string query = "DELETE FROM cart WHERE Id = @Id";

                using (SqlCommand asd = new SqlCommand(query, con))
                {
                    asd.Parameters.AddWithValue("@Id", Id);

                    asd.ExecuteNonQuery();

                    GridView2.DataBind();
                    Label6.Text = ("Record Delete");
                }
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string cusname = TextBox1.Text;
            int Id = Convert.ToInt32(TextBox2.Text);
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();

                string query = "UPDATE custable SET cusname = @cusname WHERE Id = @Id";

                using (SqlCommand asd = new SqlCommand(query, con))
                {
                    asd.Parameters.AddWithValue("@cusname", cusname);
                    asd.Parameters.AddWithValue("@id", Id);

                    asd.ExecuteNonQuery();
                    GridView1.DataBind();
                    Label2.Text = ("Record Updated");
                }
            }
        }
    }
}
