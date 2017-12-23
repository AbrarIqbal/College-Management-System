using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollegeEducationFileSystem.Forms
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Session["ID"]);
            if (id != 1)
            {
                adminsss.Visible = false;
                adminss2.Visible = false;
            }

             if (id != 2)
            {
                Students.Visible = false;
                student2.Visible = false;
            }

             if (id != 3)
             {
                 Teacher_Section.Visible = false;
             }

        }

        protected void Approve_Student_Click(object sender, EventArgs e)
        {
            Response.Redirect("Approve_Students.aspx");
        }

        protected void Approve_Teacher_Click(object sender, EventArgs e)
        {
            Response.Redirect("Approve_Teachers.aspx");
        }

        protected void Approve_Parent_Click(object sender, EventArgs e)
        {
            Response.Redirect("Approve_Parents.aspx");
        }

        protected void Show_Teachers_Click(object sender, EventArgs e)
        {
            Response.Redirect("Assign_Class.aspx");
        }

        protected void Show_Parents_Click(object sender, EventArgs e)
        {
            Response.Redirect("Add_Notifications.aspx");
        }

        protected void Show_Students_Click(object sender, EventArgs e)
        {
            Response.Redirect("Add_Payments.aspx");
        }

        protected void Add_Applicationss_Click(object sender, EventArgs e)
        {
            Response.Redirect("Add_Application.aspx");
        }

        protected void Show_Attendance_Click(object sender, EventArgs e)
        {
            Response.Redirect("Show_Attendance.aspx");
        }

        protected void Show_Class_Click(object sender, EventArgs e)
        {
            Response.Redirect("Show_Class.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Show_Assignments.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Show_Applications.aspx");
        }

        protected void Show_Payment_S_Click(object sender, EventArgs e)
        {
            Response.Redirect("Show_Payments.aspx");
        }

        protected void Add_Attendance_T_Click(object sender, EventArgs e)
        {
            Response.Redirect("Add_Attendance.aspx");
        }

        protected void Add_Assignment_T_Click(object sender, EventArgs e)
        {
            Response.Redirect("Add_Assignment.aspx");
        }

        protected void Add_Application_T_Click(object sender, EventArgs e)
        {
            Response.Redirect("Add_Application.aspx");
        }

        protected void Show_Assignment_T_Click(object sender, EventArgs e)
        {
            Response.Redirect("Show_Assignments.aspx");
        }

        protected void Show_Application_T_Click(object sender, EventArgs e)
        {
            Response.Redirect("Show_Applications.aspx");
        }
    }
}