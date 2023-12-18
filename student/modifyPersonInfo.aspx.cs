using System;
using System.Data;

namespace WebApplication2.student
{
    public partial class modifyPersonInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["xh"] != null)
                {
                    bind();
                }
                else
                {
                    // 未登录，跳转到登录页面
                    Response.Redirect("../login.aspx");
                }
            }
        }
        
        private void ShowModal(string message)
        {
            lblModalBody.Text = message;
            string script = "const myModal = new bootstrap.Modal(document.getElementById('alertModal')); myModal.show();";
            ClientScript.RegisterStartupScript(this.GetType(), "ShowModalScript", script, true);
        }

        private void bind()
        {
            string xh = Session["xh"].ToString();
            string sql = "select * from xs where xh ='" + xh + "'";
            Database db = new Database();
            DataTable dt = db.SelectSQL(sql);
            if (dt.Rows.Count > 0)
            {
                DataRow dr = dt.Rows[0];
                lbl_xm.Text = dr["xm"].ToString();
                lbl_xb.Text = dr["xb"].ToString();
                lbl_mz.Text = dr["mz"].ToString();
                lbl_csrq.Text = Convert.ToDateTime(dr["csrq"]).ToString("yyyy-MM-dd");
                lbl_xy.Text = dr["xy"].ToString();
                lbl_zy.Text = dr["zy"].ToString();
                lbl_bj.Text = dr["bj"].ToString();
                lbl_sj.Text = dr["sj"].ToString();
                lbl_yx.Text = dr["yx"].ToString();
                lbl_txdz.Text = dr["txdz"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // 收集所有字段
            string xm = lbl_xm.Text.Trim();
            string xb = lbl_xb.Text.Trim();
            string mz = lbl_mz.Text.Trim();
            string csrq = lbl_csrq.Text; // 出生日期，假设已经是正确的格式
            string xy = lbl_xy.Text.Trim();
            string zy = lbl_zy.Text.Trim();
            string bj = lbl_bj.Text.Trim();
            string sj = lbl_sj.Text.Trim();
            string yx = lbl_yx.Text.Trim();
            string txdz = lbl_txdz.Text.Trim();

            // 构建更新数据库的 SQL 语句，除了日期外都使用 N 前缀
            string sql = "UPDATE xs SET xm=N'" + xm + "', xb=N'" + xb + "', mz=N'" + mz + 
                         "', csrq='" + csrq + "', xy=N'" + xy + "', zy=N'" + zy + 
                         "', bj=N'" + bj + "', sj=N'" + sj + "', yx=N'" + yx + 
                         "', txdz=N'" + txdz + "' WHERE xh='" + Session["xh"].ToString() + "'";

            try
            {
                Database db = new Database();
                db.ExecSQL(sql); // 假设 ExecSQL 方法执行 SQL 语句
                // 可以在这里添加成功更新后的操作，比如显示消息或重定向
                ShowModal("修改成功!");
                // 重定向到个人信息页面
                Response.Redirect("/student/personInfo.aspx");
            }
            catch (Exception ex)
            {
                // 处理异常情况
                // 例如：显示错误消息或记录错误
                Console.Write(ex.Message);
                ShowModal("修改失败!");
            }
        }
    }
}