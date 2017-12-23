using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Net.Mail;
using System.Net;

namespace CollegeEducationFileSystem.Forms
{
    public partial class Approve_Students : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();   


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Approve_Studentss(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "approov")
            {
                con = new SqlConnection(WebConfigurationManager.ConnectionStrings["DBCS"].ConnectionString);
                con.Open();
                cmd = con.CreateCommand();
                int in_dex = Convert.ToInt32(Approve_Students_Grids.Rows[Convert.ToInt32(e.CommandArgument)].Cells[1].Text);
                cmd.CommandText = "UPDATE Users SET roleid = '2' WHERE userid = '" + in_dex + "'";
                cmd.ExecuteNonQuery();
                DataBind();
                Response.Write("<script>alert('User has been approved!Please goto approved section in order to send email!')</script>");

            }
        }

        protected void PEND_Click(object sender, EventArgs e)
        {
            Approve_Students_Grids.Visible = true;
            Approved_Student_Gridsss.Visible = false;
        }

        protected void REC_Click(object sender, EventArgs e)
        {
            Approve_Students_Grids.Visible = false;
            Approved_Student_Gridsss.Visible = true;
        }

        protected void Send_Mailssssss(object sender, GridViewCommandEventArgs e)
        {
          
                if (e.CommandName == "Mails")
            {
                SmtpClient client = new SmtpClient("smtp.gmail.com",587);
                client.EnableSsl= true;
                client.DeliveryMethod = SmtpDeliveryMethod.Network;
                client.UseDefaultCredentials = false;
                client.Credentials = new NetworkCredential("fahad.razzaq07@gmail.com","alwayssmile");
                int index = Convert.ToInt32(e.CommandArgument);
                GridViewRow gvRow = Approved_Student_Gridsss.Rows[index];
                string to = Approved_Student_Gridsss.Rows[index].Cells[5].Text;
                string username = Approved_Student_Gridsss.Rows[index].Cells[2].Text;
                string passwords = Approved_Student_Gridsss.Rows[index].Cells[3].Text;
                string subjects = "You have been approved by Admin. Your Credentials for Login. Username = "+username+" and Passowrd is "+passwords+" ";           
                MailMessage messagess = new MailMessage("fahad.razzaq07@gmail.com", to, "Credentials Of College Education System", subjects);
                client.Send(messagess);
                Response.Write("<script>alert('Emails is sent to user!')</script>");
            }
        }
    }
}