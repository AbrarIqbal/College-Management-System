using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollegeEducationFileSystem.Forms
{
    public partial class Show_Studentss : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int index = Convert.ToInt32(Session["ID"]);
            if (index == 2)
            {
                Student_List_DRPDWN_Teacher.Visible = true;
                Student_List_Teacher.Visible = true;
            }

        }
    }
}