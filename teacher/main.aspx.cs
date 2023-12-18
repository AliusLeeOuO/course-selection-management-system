using System;


namespace WebApplication2.teacher
{
    public partial class main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Redirect("~/teacher/personInfo.aspx");
        }
    }
}