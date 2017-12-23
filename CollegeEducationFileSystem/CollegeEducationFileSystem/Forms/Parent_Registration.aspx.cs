using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Data;

namespace CollegeEducationFileSystem.Forms
{
    public partial class Parent_Registration : System.Web.UI.Page
    {


        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sqlda = new SqlDataAdapter();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(WebConfigurationManager.ConnectionStrings["DBCS"].ConnectionString);
        }

        protected void REG_BTN_Click(object sender, EventArgs e)
        {
            con.Open();

            try
            {
                SqlCommand cmd = new SqlCommand("insert into Users " + "(roleid,username,password,name,email,address,contact,parentname,dob) VALUES (7,@username,@password,@name,@email,@address,@contact,@parentname,@dob)", con);
                cmd.Parameters.AddWithValue("@username", username_P.Text);
                cmd.Parameters.AddWithValue("@password", passwordtext_P.Text);
                cmd.Parameters.AddWithValue("@name", FullName_P.Text);
                cmd.Parameters.AddWithValue("@email", mail_P.Text);
                cmd.Parameters.AddWithValue("@address", Address_P.Text);
                cmd.Parameters.AddWithValue("@contact", Contact_P.Text);
                cmd.Parameters.AddWithValue("@parentname", F_Name.Text);
                cmd.Parameters.AddWithValue("@dob", DOB_P.Text);

                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Successfully Registered! Wait for admin response to be approved..')</script>");
            }

            catch
            {

                Response.Write("<script>alert('Error!!')</script>");
            }
        }
    }
}