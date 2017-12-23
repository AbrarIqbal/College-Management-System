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
    public partial class Show_Applications : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();   

        protected void Page_Load(object sender, EventArgs e)
        {
            int ids = Convert.ToInt32(Session["ID"]);

            if (ids == 1)
            {
                PEND.Visible = true;
                REC.Visible = true;
            }

            else if (ids == 2 || ids == 3)
            {
                Ordinary_Grid.Visible = true;
            }
        }

        protected void Apprve_App(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "aproov")
            {
                con = new SqlConnection(WebConfigurationManager.ConnectionStrings["DBCS"].ConnectionString);
                con.Open();
                cmd = con.CreateCommand();
                int in_dex = Convert.ToInt32(Admin_B.Rows[Convert.ToInt32(e.CommandArgument)].Cells[1].Text);
                cmd.CommandText = "UPDATE Applications SET status = 'Approved' WHERE appid = '" + in_dex + "'";
                cmd.ExecuteNonQuery();
                DataBind();
                Response.Write("<script>alert('Application has been approved!Please goto Attendance and make sure to set leave.')</script>");

            }

            if (e.CommandName== "Rejection")
            {
                con = new SqlConnection(WebConfigurationManager.ConnectionStrings["DBCS"].ConnectionString);
                con.Open();
                cmd = con.CreateCommand();
                int in_dex = Convert.ToInt32(Admin_B.Rows[Convert.ToInt32(e.CommandArgument)].Cells[1].Text);
                cmd.CommandText = "UPDATE Applications SET status = 'Rejected' WHERE appid = '" + in_dex + "'";
                cmd.ExecuteNonQuery();
                DataBind();
                Response.Write("<script>alert('Application has been Rejected!')</script>");

            }
        }

        protected void PEND_Click(object sender, EventArgs e)
        {
            Admin_B.Visible = true;
            Admin_Apd.Visible = false;
        }

        protected void REC_Click(object sender, EventArgs e)
        {
            Admin_Apd.Visible = true;
            Admin_B.Visible = false;
        }
    }
}