using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
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
            string sql = "SELECT kc.kcdm, kc.kcmc, ls.xm as TeacherName, kc.xf, kc.dd, kc.kclx, kc.bfb_ps, kc.bfb_qm, kc.status " +
                         "FROM kc LEFT JOIN ls ON kc.id_ls = ls.id";
            DataTable dt = db.SelectSQL(sql);
            GridViewCourses.DataSource = dt;
            GridViewCourses.DataBind();
        }
        
        private void ToggleCourseStatus(int kcdm)
        {
            Database db = new Database();
            string sql = "UPDATE kc SET status = 1 - status WHERE kcdm = " + kcdm;
            db.ExecSQL(sql);
        }
        
        protected void btnToggleStatus_Command(object sender, CommandEventArgs e)
        {
            int kcdm = Convert.ToInt32(e.CommandArgument);
            ToggleCourseStatus(kcdm);
            BindCoursesGrid(); // Rebind grid to reflect changes
        }
        
        protected void GridViewCourses_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                Button btnToggleStatus = e.Row.FindControl("btnToggleStatus") as Button;
                bool status = Convert.ToBoolean(DataBinder.Eval(e.Row.DataItem, "status"));
                btnToggleStatus.CssClass = status ? "btn btn-danger" : "btn btn-primary";
            }
        }

    }
}