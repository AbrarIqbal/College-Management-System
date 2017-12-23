using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollegeEducationFileSystem.Forms
{
    public partial class Registeration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Student_Click(object sender, EventArgs e)
        {
            Response.Redirect("Student_Registration.aspx");
        }

        protected void Teacher_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration_Teacher.aspx");
        }

        protected void Parent_Click(object sender, EventArgs e)
        {
            Response.Redirect("Parent_Registration.aspx");
        }
    }
}