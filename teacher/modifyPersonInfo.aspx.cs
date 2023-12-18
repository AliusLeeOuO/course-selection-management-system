using System;
using System.Web.UI;
using System.Data;
using System.Globalization;

namespace WebApplication2.teacher
{
    public partial class modifyPersonInfo : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["id_ls"] == null)
                {
                    Response.Write("<script>alert('你还没有登录');</script>");
                    Response.Redirect("../login.aspx");
                }
                else if (!IsPostBack)
                {
                    // 只在首次加载页面时绑定数据
                    bind();
                }
            }
        }

        private void bind()
        {
            int id = Convert.ToInt32(Session["id_ls"]);
            string sql = "select * from ls where id =" + id;
            Database db = new Database();
            DataTable dt = db.SelectSQL(sql);
            if (dt.Rows.Count > 0)
            {
                lbl_xm.Text = dt.Rows[0]["xm"].ToString();
                lbl_xb.Text = dt.Rows[0]["xb"].ToString();
                lbl_dm.Text = dt.Rows[0]["dm"].ToString();
                
                // 转换出生年月
                string csrqStr = dt.Rows[0]["csrq"].ToString();
                if (DateTime.TryParseExact(csrqStr, "yyyy年M月d日 dddd tt h:mm:ss", new CultureInfo("zh-CN"), DateTimeStyles.None, out DateTime csrq))
                {
                    lbl_cs.Text = csrq.ToString("yyyy-MM-dd");
                }
                else
                {
                    // 解析失败时的处理
                    lbl_cs.Text = "解析失败"; // 或者设定一个默认值
                }
                lbl_dh.Text = dt.Rows[0]["dh"].ToString();
            }
        }
        
        protected void UpdateInfo(object sender, EventArgs e)
        {
            // 收集表单数据
            string name = lbl_xm.Text.Trim();
            string gender = lbl_xb.SelectedValue;
            string code = lbl_dm.Text.Trim();
            string birthDate = lbl_cs.Text; // Assuming this is a string in the correct format
            string phone = lbl_dh.Text.Trim();
            
            // 构建 SQL 更新语句
            string sql = "UPDATE ls SET xm = N'" + name + 
                         "', xb = N'" + gender + 
                         "', dm = N'" + code + 
                         "', csrq = '" + birthDate + 
                         "', dh = N'" + phone + 
                         "' WHERE id = " + Session["id_ls"];

            Database db = new Database();
            db.ExecSQL(sql);

            // 可选：更新后的逻辑，如显示消息、重定向等
            Response.Redirect("/teacher/personInfo.aspx");
        }
    }
}