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
    }
}