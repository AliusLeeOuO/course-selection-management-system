using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication2.teacher
{
    public partial class 成绩 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id_ls"] == null)
            {
                Response.Write(
                    "<SCRIPT LANGUAGE=\"JavaScript\">alert('你还没有登录');window.location.href='../login.aspx':</SCRIPT>");
            }
            else
            {
                if (!IsPostBack) //判断当前请求是否第一次打开。当通过页面的提交按钮或能引起提交的按钮以POST的方式提交的服务器时，页面就不再是第一次打开了。（每点击一次按钮，都是一次加载）
                {
                    bind();
                }
            }
        }

        private void bind() //数据绑定
        {
            string sql = "select * from kc where id_ls=" + Session["id_ls"].ToString();
            Database db = new Database();
            DataTable dt = db.SelectSQL(sql);
            ddlt_kc.DataSource = dt; //设置数据来源
            ddlt_kc.DataValueField = "kcdm";
            ddlt_kc.DataTextField = "kcmc";
            ddlt_kc.DataBind(); //数据绑定
        }

        private void Page_Error(object sender, System.EventArgs e)
        {
            try
            {
                Response.Clear(); //这里有问题
                string str2 = "<SCRIPT LANGUAGE=\"JavaScript\">alert('" +
                              Server.GetLastError().ToString().Replace("\"", "\\\"").Replace("\\", "\\\\")
                                  .Replace("\n", " ").Replace("\t", " ").Replace("\r", " ") +
                              "');history.back();</SCRIPT>"; //也可以
                string str = "<SCRIPT LANGUAGE=\"JavaScript\">alert('" + SUT(Server.GetLastError().ToString()) +
                             "');history.back();</SCRIPT>";
                Response.Write(str);
                Response.End();
            }
            finally
            {
                Server.ClearError();
            }
        }

        private static string SUT(string str)
        {
            return str.Replace("\\", "\\\\").Replace("\"", "\\\"").Replace("\n", " ").Replace("\t", " ")
                .Replace("\r", " ");
        }


        private void bindxs()
        {
            string kcdm = ddlt_kc.SelectedValue;
            string sql =
                "select kc_xs.id,xs.xh,xs.xm,cj_ps,cj_qm,cj from xs,kc_xs where xs.xh=kc_xs.xh and kc_xs.kcdm='" +
                kcdm + "'";
            Database db = new Database();
            DataTable dt = db.SelectSQL(sql);
            ddlt_cj.DataSource = dt; //设置数据来源
            ddlt_cj.DataBind(); //数据绑定

            sql = "select bfb_ps,bfb_qm from kc where kcdm='" + kcdm + "'";
            dt = db.SelectSQL(sql);
            tbx_bfbps.Text = dt.Rows[0]["bfb_ps"].ToString();
            tbx_bfbps.Text = dt.Rows[0]["bfb_qm"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            bindxs();
        }


        private void UpdateKC(String kcdm, double bfb_ps, double bfb_qm) //更新学生_课程表的百分率
        {
            string sql = "update kc set bfb_ps=" + bfb_ps + ",bfb_qm=" + bfb_qm + " where kcdm='" + kcdm + "'";
            Database db = new Database();
            db.ExecSQL(sql);
        }

        private void UpdateCJ(string id_kc_xs, double cj_ps, double cj_qm, double cj)
        {
            string sql = "update kc_xs set cj_ps=" + cj_ps.ToString() + ",cj_qm=" + cj_qm.ToString() + ",cj=" +
                         cj.ToString() + " where id=" + id_kc_xs + "";

            //写好sql语句后要执行
            Database db = new Database();
            db.SelectSQL(sql);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (tbx_bfbps.Text.Trim() == "")
            {
                throw new Exception("请输入平时成绩百分比！");
            }

            if (tbx_bfbqm.Text.Trim() == "")
            {
                throw new Exception("请输入期末成绩百分比！");
            }

            double bfb_ps = Convert.ToDouble(tbx_bfbps.Text.Trim());
            double bfb_qm = Convert.ToDouble(tbx_bfbqm.Text.Trim()); //强制类型转换

            UpdateKC(ddlt_kc.SelectedValue.ToString(), bfb_ps, bfb_qm);

            foreach (DataListItem item in ddlt_cj.Items)
            {
                Label lbl_id = (Label)item.FindControl("lbl_id");
                TextBox txb_pscj = (TextBox)item.FindControl("txb_pscj");
                TextBox txb_qmcj = (TextBox)item.FindControl("txb_qmcj");
                if (txb_pscj.Text != "" && txb_qmcj.Text != "")
                {
                    double cj_ps = Convert.ToDouble(txb_pscj.Text);
                    double cj_qm = Convert.ToDouble(txb_qmcj.Text);
                    double cj = cj_ps * bfb_ps / 100.0 + cj_qm * bfb_qm / 100.0;
                    UpdateCJ(lbl_id.Text, cj_ps, cj_qm, cj);
                }
            }

            Response.Write("<SCRIPT LANGUAGE=\"JavaScript\">alert('保存成功！');</SCRIPT>");
            bindxs();
        }
    }
}