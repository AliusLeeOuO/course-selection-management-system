using System;
using System.Web.UI;

namespace WebApplication2.teacher
{
    public partial class teacher : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id_ls"] != null)
            {
                lbl_dm.Text = Session["id_ls"].ToString();
            }
        }
        
        public void ShowModal(string message)
        {
            lblModalBody.Text = message;
            string script = "const myModal = new bootstrap.Modal(document.getElementById('alertModal')); myModal.show();";

            // 从当前 Page 获取 ScriptManager 并注册脚本
            ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(), "ShowModalScript", script, true);
        }

    }
}