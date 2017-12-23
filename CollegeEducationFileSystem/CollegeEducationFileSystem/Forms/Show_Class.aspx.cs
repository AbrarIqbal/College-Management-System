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
    public partial class Show_Class : System.Web.UI.Page
    {
        SqlCommand sqlcmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {

            int ids = Convert.ToInt32(Session["ID"]);

            Student_View.Visible = false;
            Admin_View.Visible = false;
            Teachers_View.Visible = false;
            Button1.Visible = false;
            Child_List.Visible = false;
            Label1.Visible = false;

            if (ids == 2)
            {
                Student_View.Visible = true;
            }

            else
                if (ids == 1)
                {
                    Admin_View.Visible = true;
                }
                else if (ids == 3)

                {
                    Teachers_View.Visible = true;
                }

                else
                    if (ids == 4)
                    {

                        Button1.Visible = true;
                        Child_List.Visible = true;
                        Label1.Visible = true;

                    }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(WebConfigurationManager.ConnectionStrings["DBCS"].ConnectionString);

            string nama = Child_List.SelectedValue;
            
            string str = "select *from Class where studentname='" + nama + "'";
            SqlDataAdapter sda = new SqlDataAdapter(str, con);
            sda.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }



     
    }
}