﻿using System;
using System.Web.UI.WebControls;
using System.Data;

namespace WebApplication2.teacher
{
    public partial class manageCourse : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id_ls"] == null)
            {
                Master.ShowModal("你还没有登录");
                // 未登录，跳转到登录页面
                Response.Redirect("../login.aspx");
            }
            else if (!IsPostBack)
            {
                BindCourses();
            }
        }


        private void BindCourses()
        {
            Database db = new Database();
            string sql = "SELECT * FROM kc WHERE id_ls=" + Session["id_ls"].ToString();
            DataTable dt = db.SelectSQL(sql);
            ddlt_kc.DataSource = dt;
            ddlt_kc.DataValueField = "kcdm";
            ddlt_kc.DataTextField = "kcmc";
            ddlt_kc.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string kcdm = ddlt_kc.SelectedValue;
            if (!string.IsNullOrEmpty(kcdm))
            {
                BindStudentScores();
                PanelPercentage.Visible = true; // 显示设置比例部分
            }
            else
            {
                PanelPercentage.Visible = false; // 隐藏设置比例部分
            }
        }

        private void BindStudentScores()
        {
            string kcdm = ddlt_kc.SelectedValue;
            if (!string.IsNullOrEmpty(kcdm))
            {
                Database db = new Database();
                // 确保 SQL 查询返回包含成绩的数据
                string sql = "SELECT kc_xs.id, xs.xh, xs.xm, cj_ps, cj_qm, cj FROM xs " +
                             "JOIN kc_xs ON xs.xh = kc_xs.xh " +
                             "JOIN kc ON kc_xs.kcdm = kc.kcdm " +
                             "WHERE kc.kcdm = '" + kcdm + "'";

                DataTable dt = db.SelectSQL(sql);
                GridViewCJ.DataSource = dt;
                GridViewCJ.DataBind();

                // 获取并设置平时成绩占比和期末成绩占比
                sql = "SELECT bfb_ps, bfb_qm FROM kc WHERE kcdm = '" + kcdm + "'";
                dt = db.SelectSQL(sql);
                if (dt.Rows.Count > 0)
                {
                    tbx_bfbps.Text = dt.Rows[0]["bfb_ps"].ToString();
                    tbx_bfbqm.Text = dt.Rows[0]["bfb_qm"].ToString();
                    PanelPercentage.Visible = true;
                }
                else
                {
                    PanelPercentage.Visible = false;
                }
            }
            else
            {
                GridViewCJ.DataSource = null;
                GridViewCJ.DataBind();
                PanelPercentage.Visible = false;
            }
        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            if (!AreAllScoresEntered())
            {
                Master.ShowModal("所有成绩框都必须填写！");
                return;
            }

            if (!IsValidPercentage(out double bfb_ps, out double bfb_qm))
            {
                Master.ShowModal("平时成绩占比和期末成绩占比之和必须等于100，并且不能为空！");
                return;
            }

            UpdateCoursePercentage(bfb_ps, bfb_qm);
            UpdateStudentScores();
            Master.ShowModal("保存成功");
            BindStudentScores();
        }

        private bool AreAllScoresEntered()
        {
            foreach (GridViewRow row in GridViewCJ.Rows)
            {
                TextBox txb_pscj = row.FindControl("txb_pscj") as TextBox;
                TextBox txb_qmcj = row.FindControl("txb_qmcj") as TextBox;

                if (txb_pscj != null && txb_qmcj != null)
                {
                    if (string.IsNullOrWhiteSpace(txb_pscj.Text) || string.IsNullOrWhiteSpace(txb_qmcj.Text))
                    {
                        return false;
                    }
                }
            }

            return true;
        }

        private bool IsValidPercentage(out double bfb_ps, out double bfb_qm)
        {
            bfb_ps = 0;
            bfb_qm = 0;

            if (double.TryParse(tbx_bfbps.Text.Trim(), out bfb_ps) &&
                double.TryParse(tbx_bfbqm.Text.Trim(), out bfb_qm))
            {
                return Math.Abs(bfb_ps + bfb_qm - 100) < 0.01;
            }

            return false;
        }

        private void UpdateCoursePercentage(double bfb_ps, double bfb_qm)
        {
            string kcdm = ddlt_kc.SelectedValue;

            Database db = new Database();
            string sql = "UPDATE kc SET bfb_ps=" + bfb_ps + ", bfb_qm=" + bfb_qm + " WHERE kcdm='" + kcdm + "'";
            db.ExecSQL(sql);
        }

        private void UpdateStudentScores()
        {
            string kcdm = ddlt_kc.SelectedValue;
            double bfb_ps = Convert.ToDouble(tbx_bfbps.Text.Trim());
            double bfb_qm = Convert.ToDouble(tbx_bfbqm.Text.Trim());

            foreach (GridViewRow row in GridViewCJ.Rows)
            {
                var id = GridViewCJ.DataKeys[row.RowIndex].Value;
                var txb_pscj = row.FindControl("txb_pscj") as TextBox;
                var txb_qmcj = row.FindControl("txb_qmcj") as TextBox;
                
                if (txb_pscj != null && txb_qmcj != null && id != null)
                {
                    double cj_ps = Convert.ToDouble(txb_pscj.Text);
                    double cj_qm = Convert.ToDouble(txb_qmcj.Text);
                    double cj = cj_ps * bfb_ps / 100.0 + cj_qm * bfb_qm / 100.0;
                    Database db = new Database();
                    string sql = "UPDATE kc_xs SET cj_ps=" + cj_ps + ", cj_qm=" + cj_qm + ", cj=" + cj + " WHERE id=" + id + " and kcdm='" + kcdm + "'";
                    db.ExecSQL(sql);
                }
            }
        }

    }
}