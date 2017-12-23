using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CollegeEducationFileSystem.Forms
{
    public partial class Show_Notification : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int ids = Convert.ToInt32(Session["ID"]);
            if (ids != 1)
            {
                Notification_Admin.Visible = false;
            }

            if (ids == 1)
            {
                Ord_Notification_Grid.Visible = false;
            }
        }
    }
}