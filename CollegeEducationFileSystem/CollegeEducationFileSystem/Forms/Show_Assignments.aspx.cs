using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;

namespace CollegeEducationFileSystem.Forms
{
    public partial class Show_Assignments : System.Web.UI.Page
    {

        SqlCommand sqlcmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {
            Admin_Grids.Visible = false;
            Student_Assignment_Grids.Visible = false;
            int ids = Convert.ToInt32(Session["ID"]);

            if (ids == 1 || ids == 3)
            {
                Admin_Grids.Visible = true;
            }

            else if (ids == 2)
            {
                Student_Assignment_Grids.Visible = true;


                string stuname = Session["Name"].ToString();
                con = new SqlConnection(WebConfigurationManager.ConnectionStrings["DBCS"].ConnectionString);
                con.Open();
                string query = "select name from Class where studentname ='" + stuname + "'";
                sda.SelectCommand = new SqlCommand(query, con);
                sda.Fill(ds, "Class");
                Session["Assignment_Stu"] = ds.Tables[0].Rows[0]["name"];
                string clasname = Session["Assignment_Stu"].ToString();

            }

        }

        protected void Download_Assignments(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Downloadss")
            {
                int id = Convert.ToInt32(Admin_Grids.Rows[Convert.ToInt32(e.CommandArgument)].Cells[1].Text);
                byte[] bytes;
                string fileName, contentType;
                string constr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        cmd.CommandText = "select filename, Data, contenttype from Assignment where workid= '"+id+"'";
                        cmd.Connection = con;
                        con.Open();
                        using (SqlDataReader sdr = cmd.ExecuteReader())
                        {
                            sdr.Read();
                            bytes = (byte[])sdr["Data"];
                            contentType = sdr["contenttype"].ToString();
                            fileName = sdr["filename"].ToString();
                        }
                        con.Close();
                    }
                }
                Response.Clear();
                Response.Buffer = true;
                Response.Charset = "";
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                Response.ContentType = contentType;
                Response.AppendHeader("Content-Disposition", "attachment; filename=" + fileName);
                Response.BinaryWrite(bytes);
                Response.Flush();
                Response.End();
            }
        }

        protected void ordinary_Down(object sender, GridViewCommandEventArgs e)
        {

            if (e.CommandName == "Download_Ord")
            {
                int id = Convert.ToInt32(Admin_Grids.Rows[Convert.ToInt32(e.CommandArgument)].Cells[1].Text);
                byte[] bytes;
                string fileName, contentType;
                string constr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                using (SqlConnection con = new SqlConnection(constr))
                {
                    using (SqlCommand cmd = new SqlCommand())
                    {
                        cmd.CommandText = "select filename, Data, contenttype from Assignment where workid= '"+id+"'";
                        cmd.Connection = con;
                        con.Open();
                        using (SqlDataReader sdr = cmd.ExecuteReader())
                        {
                            sdr.Read();
                            bytes = (byte[])sdr["Data"];
                            contentType = sdr["contenttype"].ToString();
                            fileName = sdr["filename"].ToString();
                        }
                        con.Close();
                    }
                }
                Response.Clear();
                Response.Buffer = true;
                Response.Charset = "";
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                Response.ContentType = contentType;
                Response.AppendHeader("Content-Disposition", "attachment; filename=" + fileName);
                Response.BinaryWrite(bytes);
                Response.Flush();
                Response.End();
            }
        }

        
            
    }
}