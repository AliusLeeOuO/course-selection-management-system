using System;

namespace WebApplication2.student
{
    public partial class student : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["xh"] != null)
            {
                lbl_xh.Text = Session["xh"].ToString();
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