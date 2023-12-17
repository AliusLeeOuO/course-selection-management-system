using System;

namespace WebApplication2.student
{
    public partial class 主页1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // 重定向到personInfo.aspx
            Response.Redirect("/student/personInfo.aspx");
        }
    }
}