using System;
using System.Web.UI;

namespace WebApplication2.teacher
{
    public partial class addNewCourse : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(txtCourseName.Text) ||
                string.IsNullOrWhiteSpace(txtCredits.Text) ||
                string.IsNullOrWhiteSpace(txtUsualScorePercent.Text) ||
                string.IsNullOrWhiteSpace(txtFinalScorePercent.Text) ||
                string.IsNullOrWhiteSpace(txtDirection.Text))
            {
                // 显示错误消息：所有字段都必须填写
                Master.ShowModal("所有字段都必须填写！");
                return;
            }

            double usualScorePercentCalc;
            double finalScorePercentCalc;
            if (!double.TryParse(txtUsualScorePercent.Text, out usualScorePercentCalc) ||
                !double.TryParse(txtFinalScorePercent.Text, out finalScorePercentCalc) ||
                Math.Abs(usualScorePercentCalc + finalScorePercentCalc - 100) > 0.01)
            {
                // 显示错误消息：平时分占比和期末分占比之和必须等于 100
                Master.ShowModal("平时分占比和期末分占比之和必须等于 100！");
                return;
            }

            // 添加课程到数据库的逻辑
            try
            {
                string courseName = txtCourseName.Text.Trim();
                int credits = Convert.ToInt32(txtCredits.Text.Trim());
                string courseType = ddlCourseType.SelectedValue;
                string direction = txtDirection.Text.Trim();
                double usualScorePercent = Convert.ToDouble(txtUsualScorePercent.Text.Trim());
                double finalScorePercent = Convert.ToDouble(txtFinalScorePercent.Text.Trim());
                string teacherId = Session["id_ls"]?.ToString();

                string sql = "INSERT INTO kc (kcmc, xf, kclx, dd, bfb_ps, bfb_qm, id_ls) VALUES (N'" + courseName + "', " +
                             credits + ", N'" + courseType + "', N'" + direction + "', " + usualScorePercent + ", " + finalScorePercent +
                             ", '" + teacherId + "')";


                Database db = new Database();
                db.ExecSQL(sql);

                // 显示成功信息
                Master.ShowModal("课程添加成功！");
                Response.Redirect("~/teacher/myCourse.aspx");
            }
            catch (Exception ex)
            {
                // 错误处理：显示错误消息
                Master.ShowModal("添加课程时出错：" + ex.Message);
            }
        }
    }
}