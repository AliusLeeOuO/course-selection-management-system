using System;
using System.Web.UI.WebControls;
using System.Data;
using System.Drawing;

namespace WebApplication2.student
{
    public partial class 课程查询 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["xh"] != null)
            {
                if (!IsPostBack)
                {
                    BindGridView();
                }
            }
        }
        
        private void BindGridView()
        {
            string xh = Session["xh"].ToString();
            string sql = "SELECT kc.kcdm, kcmc, xf, dd, xm, dm, kclx FROM kc, kc_xs, ls WHERE kc.kcdm = kc_xs.kcdm AND kc.id_ls = ls.id AND xh = '" + xh + "'";
            Database db = new Database();
            DataTable dt = db.SelectSQL(sql);

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        
        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                DataRowView rowView = (DataRowView)e.Row.DataItem;
        
                string kclx = rowView["kclx"].ToString().Trim();
                if (kclx == "必修课")
                {
                    e.Row.Cells[1].ForeColor = Color.Red; // 假设课程名称在第二列
                }

                int xf;
                if (int.TryParse(rowView["xf"].ToString().Trim(), out xf) && xf > 5)
                {
                    e.Row.Cells[0].ForeColor = Color.Red; // 假设课程代码在第一列
                }
            }
        }
    }
}