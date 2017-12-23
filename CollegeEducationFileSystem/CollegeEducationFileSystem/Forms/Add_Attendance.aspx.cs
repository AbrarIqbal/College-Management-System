using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace CollegeEducationFileSystem.Forms
{
    public partial class Add_Attendance : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(WebConfigurationManager.ConnectionStrings["DBCS"].ConnectionString);
        }

        protected void REG_BTN_Click(object sender, EventArgs e)
        {
            con.Open();

            try
            {
                SqlCommand cmd = new SqlCommand("insert into Attendance " + "(studentname,status,dateofstatus) VALUES (@studentname,@status,@dateofstatus)", con);
                cmd.Parameters.AddWithValue("@studentname", Student_List.SelectedValue);
                cmd.Parameters.AddWithValue("@status", Attendance_List.SelectedValue);
                cmd.Parameters.AddWithValue("@dateofstatus", Attendance_Date.Text);
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