using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Configuration;
using System.Data.SqlClient;

namespace CollegeEducationFileSystem.Forms
{
    public partial class Add_Payments : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(WebConfigurationManager.ConnectionStrings["DBCS"].ConnectionString);
        }

        protected void REG_BTN_Click(object sender, EventArgs e)
        {
            con.Open();

            try
            {
                SqlCommand cmd = new SqlCommand("insert into Payments " + "(title,ammount,studentname) VALUES (@title,@ammount,@studentname)", con);
                cmd.Parameters.AddWithValue("@title", Title_Payment.Text);
                cmd.Parameters.AddWithValue("@ammount", Ammount_Payment.Text);
                cmd.Parameters.AddWithValue("@studentname", Student_List.Text);
                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Successfully Entered!')</script>");
            }

            catch
            {

                Response.Write("<script>alert('Error!!')</script>");
            }
        }
    }
}