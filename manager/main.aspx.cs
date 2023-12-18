using System;

namespace WebApplication2.manager
{
    public partial class 主页1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Redirect("~/manager/manageCourse.aspx");
        }
    }
}