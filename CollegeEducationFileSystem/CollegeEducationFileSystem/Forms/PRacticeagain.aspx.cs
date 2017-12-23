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
    public partial class PRacticeagain : System.Web.UI.Page
    {
        SqlCommand sqlcmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            //con = new SqlConnection(WebConfigurationManager.ConnectionStrings["DBCS"].ConnectionString);



            //string str = "select *from Users";
            //SqlDataAdapter sda = new SqlDataAdapter(str, con);
            //sda.Fill(ds);
            //GridView1.DataSource = ds.Tables[0];
            //GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(WebConfigurationManager.ConnectionStrings["DBCS"].ConnectionString);

            string nama = DropDownList1.SelectedValue;

            string str = "select *from Class where studentname='"+nama+"'";
            SqlDataAdapter sda = new SqlDataAdapter(str, con);
            sda.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }

    }
}