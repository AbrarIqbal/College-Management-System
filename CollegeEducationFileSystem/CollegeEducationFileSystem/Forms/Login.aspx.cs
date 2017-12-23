using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Xml.Linq;
using System.Data;
using System.Web.Configuration;

namespace CollegeEducationFileSystem.Forms
{
    public partial class Login : System.Web.UI.Page
    {

        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sqlda = new SqlDataAdapter();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(WebConfigurationManager.ConnectionStrings["DBCS"].ConnectionString);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            con.Open();
            try
            {
                string query = "select parentname, name, u.[username], ur.[roleid], ur.rolename from Users u inner join  roles ur on u.roleid= ur.roleid  where u.username ='" + username.Text + "' and u.password='" + passwordtext.Text + "'";

                sqlda.SelectCommand = new SqlCommand(query, con);
                sqlda.Fill(ds, "Users");

                if (ds.Tables[0].Rows.Count > 0)
                {

                    Session["ID"] = ds.Tables[0].Rows[0]["roleid"];
                    Session["Name"] = ds.Tables[0].Rows[0]["name"];
                    Session["FName"] = ds.Tables[0].Rows[0]["parentname"];
                    int id = Convert.ToInt32(ds.Tables[0].Rows[0]["roleid"]);

                    if (id == 5 || id == 6 || id == 7)
                    {
                        Response.Write("<script>alert('You are not approved yet. Contact Admin or wait for email of confirmation')</script>");
                    }

                    else
                    {
                        Response.Redirect("Home.aspx");
                    }
                    }

                else
                {
                    Response.Write("<script>alert('Password or Username is incorrect Please Try Again.')</script>");
                }
            }

            catch { }
        }
    }
}