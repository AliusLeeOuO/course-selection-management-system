using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2.manager
{
    public partial class addNewCourse : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindTeacherDropDown();
            }
        }

        private void BindTeacherDropDown()
        {
            Database db = new Database();
            DataTable dt = db.SelectSQL("SELECT id, xm FROM ls");

            ddlTeacher.DataSource = dt;
            ddlTeacher.DataTextField = "xm";
            ddlTeacher.DataValueField = "id";
            ddlTeacher.DataBind();

            ddlTeacher.Items.Insert(0, new ListItem("-- 选择教师 --", "0"));
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string courseName = txtCourseName.Text;
            int teacherId = int.Parse(ddlTeacher.SelectedValue);
            int credits = int.Parse(txtCredits.Text);
            string courseNature = txtCourseNature.Text;
            string location = txtLocation.Text;
            string courseType = txtCourseType.Text;
            decimal usualScorePercent = decimal.Parse(txtUsualScorePercent.Text);
            decimal finalScorePercent = decimal.Parse(txtFinalScorePercent.Text);

            string sql =
                $"INSERT INTO kc (kcmc, id_ls, xf, kcxz, dd, kclx, bfb_ps, bfb_qm) VALUES (N'{courseName}', {teacherId}, {credits}, N'{courseNature}', N'{location}', N'{courseType}', {usualScorePercent}, {finalScorePercent})";
            Database db = new Database();
            db.ExecSQL(sql);

            // 可选：插入后的逻辑，如显示消息、重定向等
        }
    }
}