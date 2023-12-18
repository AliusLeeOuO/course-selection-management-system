using System;
using System.Web.UI;

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
        
        public void ShowModal(string message)
        {
            lblModalBody.Text = message;
            string script =
                "const myModal = new bootstrap.Modal(document.getElementById('alertModal')); myModal.show();";

            // 从当前 Page 获取 ScriptManager 并注册脚本
            ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(), "ShowModalScript", script, true);
        }
    }
}