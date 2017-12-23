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
    public partial class Student_Registration : System.Web.UI.Page
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
                SqlCommand cmd = new SqlCommand("insert into Users " + "(roleid,username,password,name,email,address,contact,parentname,qualification,dob) VALUES (5,@username,@password,@name,@email,@address,@contact,@parentname,@qualification,@dob)", con);
                cmd.Parameters.AddWithValue("@username", username_P.Text);
                cmd.Parameters.AddWithValue("@password", passwordtext_P.Text);
                cmd.Parameters.AddWithValue("@name", FullName_P.Text);
                cmd.Parameters.AddWithValue("@email", mail_P.Text);
                cmd.Parameters.AddWithValue("@address", Address_P.Text);
                cmd.Parameters.AddWithValue("@contact", Contact_P.Text);
                cmd.Parameters.AddWithValue("@parentname", DropDownList1.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@qualification", Qual.SelectedValue);
                cmd.Parameters.AddWithValue("@dob", DOB_P.Text);

                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Successfully Registered!.')</script>");
            }

            catch
            {

                Response.Write("<script>alert('Error!!')</script>");
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                string query = "select address from [Users] where name = '"+DropDownList1.SelectedItem.Text+"'";

                cmd = new SqlCommand(query, con);
                SqlDataReader reader = cmd.ExecuteReader();

                if (reader.Read())
                {
                    Address_P.Text = reader["address"].ToString();
                }

                reader.Close();
                con.Close();
            }

            catch 
            {
            
            }
        }
    }
}