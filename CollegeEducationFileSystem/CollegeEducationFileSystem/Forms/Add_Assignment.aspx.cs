using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace CollegeEducationFileSystem.Forms
{
    public partial class Add_Assignment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void REG_BTN_Click(object sender, EventArgs e)
        {

            string filename = Path.GetFileName(Uploading_Files.PostedFile.FileName);
            string contentType = Uploading_Files.PostedFile.ContentType;
            using (Stream fs = Uploading_Files.PostedFile.InputStream)
            {
                using (BinaryReader br = new BinaryReader(fs))
                {
                    byte[] bytes = br.ReadBytes((Int32)fs.Length);
                    string constr = ConfigurationManager.ConnectionStrings["DBCS"].ConnectionString;
                    using (SqlConnection con = new SqlConnection(constr))
                    {
                        string query = "insert into Assignment (title,filename,classname, contenttype, Data) values (@title,@filename,@classname, @contenttype, @Data)";
                        using (SqlCommand cmd = new SqlCommand(query))
                        {
                            cmd.Connection = con;
                            cmd.Parameters.AddWithValue("@title", Assignment_Title.Text);
                            cmd.Parameters.AddWithValue("@classname", Class_List.SelectedValue);
                            cmd.Parameters.AddWithValue("@contenttype", contentType);
                            cmd.Parameters.AddWithValue("@filename", filename);
                            cmd.Parameters.AddWithValue("@Data", bytes);
                            con.Open();
                            cmd.ExecuteNonQuery();
                            con.Close();
                        }
                    }
                }
            }
            //Response.Redirect(Request.Url.AbsoluteUri);
            Response.Write("<script>alert('Successfully Entered!')</script>");
        }
    }
}