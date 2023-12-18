using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2.manager
{
    public partial class manager : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["id_manager"] != null)
            {
                lbl_id.Text = Session["id_manager"].ToString();
            }
        }
        protected void logout(object sender, EventArgs e)
        {
            Session["id_manager"] = null;
            Session["id_ls"] = null;
            Session["xh"] = null;
            Response.Redirect("../login.aspx");
        }
    }
}