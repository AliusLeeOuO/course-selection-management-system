using System;
using System.Data;
using System.Web.UI;

namespace WebApplication2.manager
{
    public partial class manageCourse : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindCoursesGrid();
            }
        }

        private void BindCoursesGrid()
        {
            Database db = new Database();

            // 修改 SQL 查询以联合 kc 表和 ls 表
            string sql = "SELECT kc.kcdm, kc.kcmc, ls.xm as TeacherName, kc.xf, kc.kcxz, kc.dd, kc.kclx, kc.bfb_ps, kc.bfb_qm " +
                         "FROM kc LEFT JOIN ls ON kc.id_ls = ls.id";

            DataTable dt = db.SelectSQL(sql);

            if (dt.Rows.Count > 0)
            {
                GridViewCourses.DataSource = dt;
                GridViewCourses.DataBind();
            }
            else
            {
                // 处理没有数据的情况
            }
        }

        protected void BtnAddCourse_Click(object sender, EventArgs e)
        {
            // 打印到控制台
            Console.WriteLine("添加课程");
            // 实现添加课程的逻辑
            Response.Redirect("addNewCourse.aspx");
        }
    }
}