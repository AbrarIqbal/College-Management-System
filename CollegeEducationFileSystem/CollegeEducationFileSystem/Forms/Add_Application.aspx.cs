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
    public partial class Add_Application : System.Web.UI.Page
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
            string NName = Session["Name"].ToString();
            try
            {
                SqlCommand cmd = new SqlCommand("insert into Applications " + "(title,reason,name,status) VALUES (@title,@reason,@name,'pending')", con);
                cmd.Parameters.AddWithValue("@title", Title_P.Text);
                cmd.Parameters.AddWithValue("@reason", Reasons.Text);
                cmd.Parameters.AddWithValue("@name", NName);
                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Successfully Entered! Wait for Admin response!')</script>");
            }

            catch
            {

                Response.Write("<script>alert('Error!!')</script>");
            }
        }
    }
}