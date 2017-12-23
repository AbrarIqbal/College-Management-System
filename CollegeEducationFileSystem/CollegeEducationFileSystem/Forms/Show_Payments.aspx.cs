using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollegeEducationFileSystem.Forms
{
    public partial class Show_Payments : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Admin_Grids.Visible = false;
            Student_Gridsss.Visible = false;

            int ids = Convert.ToInt32(Session["ID"]);
            if (ids == 1)
            {
                Admin_Grids.Visible = true;
            }

            else if (ids == 2)
            {
                Student_Gridsss.Visible = true;
            }
        }
    }
}