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
    public partial class Add_Class : System.Web.UI.Page
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
                SqlCommand cmd = new SqlCommand("insert into Class " + "(name,section,studentname,teachername) VALUES (@name,@section,@studentname,@teachername)", con);
                cmd.Parameters.AddWithValue("@name", Class_List.SelectedValue);
                cmd.Parameters.AddWithValue("@section", Section_List.SelectedValue);
                cmd.Parameters.AddWithValue("@studentname", Student_List.Text);
                cmd.Parameters.AddWithValue("@teachername", Teacher_List.Text);
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