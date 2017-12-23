using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollegeEducationFileSystem.MasterPages
{
    public partial class Main : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["ID"] == null && Session["Name"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            int id = Convert.ToInt32(Session["ID"]);
            if (id != 1)
            {
                Admin.Visible = false;
                Add_B.Visible = false;
            }

            //else if (id == 1)
            //{
            //    Noticess.Visible = false;
            //    Noticess.Visible = false;
            //}


        }

        protected void Add_Parent_Click(object sender, EventArgs e)
        {
            Response.Redirect("Approve_Parents.aspx");
        }

        protected void Add_Teacher_Click(object sender, EventArgs e)
        {
            Response.Redirect("Approve_Teachers.aspx");
        }

        protected void Add_Student_Click(object sender, EventArgs e)
        {
            Response.Redirect("Approve_Students.aspx");
        }

        protected void Assign_Class_Click(object sender, EventArgs e)
        {
            Response.Redirect("Assign_Class.aspx");
        }

        protected void Add_Payments_Click(object sender, EventArgs e)
        {
            Response.Redirect("Add_Payments.aspx");
        }

        protected void Add_Notification_Click(object sender, EventArgs e)
        {
            Response.Redirect("Add_Notifications.aspx");
        }

        protected void Add_Assignment_Click(object sender, EventArgs e)
        {
            Response.Redirect("Add_Assignment.aspx");
        }

        protected void Show_Assignments_Click(object sender, EventArgs e)
        {
            Response.Redirect("Show_Assignments.aspx");
        }

        protected void Home_Panel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }

        protected void Logout_B_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Login.aspx");
        }

        protected void Add_App_Click(object sender, EventArgs e)
        {
            Response.Redirect("Add_Application.aspx");
        }

        protected void Approve_Applications_Click(object sender, EventArgs e)
        {
            Response.Redirect("Show_Applications.aspx");
        }

        protected void View_App_Click(object sender, EventArgs e)
        {
            Response.Redirect("Show_Applications.aspx");
        }

        protected void Noticess_Click(object sender, EventArgs e)
        {
            Response.Redirect("Show_Notification.aspx");
        }
    }
}