using System;
using System.Data;
using System.Web.UI;

namespace WebApplication2.teacher
{
    public partial class myCourse : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindCourses();
            }
        }

        private void BindCourses()
        {
            if (Session["id_ls"] != null)
            {
                string teacherId = Session["id_ls"].ToString();
                Database db = new Database();
                string sql = "SELECT * FROM kc WHERE id_ls='" + teacherId + "'";
                DataTable dt = db.SelectSQL(sql);
                GridViewCourses.DataSource = dt;
                GridViewCourses.DataBind();
            }
            else
            {
                // 处理未登录或教师ID丢失的情况
                Response.Redirect("~/login.aspx"); // 或其他错误处理
            }
        }

        protected void AddCourseButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/teacher/addNewCourse.aspx");
        }
    }
}