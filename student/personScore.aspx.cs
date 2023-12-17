using System;
using System.Web.UI.WebControls;
using System.Data;


namespace WebApplication2.student
{
    public partial class personScore : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["xh"] != null)
            {
                if (!IsPostBack)
                {
                    BindGridView();
                    BindAVG();
                }
            }
        }

        private void BindGridView()
        {
            string xh = Session["xh"].ToString();
            string sql = "SELECT kc.kcdm, kcmc, xf, xm, cj FROM kc, kc_xs, ls WHERE kc.kcdm = kc_xs.kcdm AND kc.id_ls = ls.id AND xh = '" + xh + "'";
            Database db = new Database();
            DataTable dt = db.SelectSQL(sql);

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            // 如果需要在数据行绑定时进行额外处理，添加代码在这里
        }

        private void BindAVG()
        {
            string xh = Session["xh"].ToString();
            string sql = "SELECT xh, MAX(cj) AS cj_max, MIN(ISNULL(cj, 0)) AS cj_min, AVG(cj) AS cj_avg FROM kc_xs GROUP BY xh HAVING xh ='" + xh + "'";
            Database db = new Database();
            DataTable dt = db.SelectSQL(sql);

            if (dt.Rows.Count > 0)
            {
                Label1.Text = "最高分:" + dt.Rows[0]["cj_max"] + " 最低分:" + dt.Rows[0]["cj_min"] + " 平均分:" + dt.Rows[0]["cj_avg"];
            }
            else
            {
                Label1.Text = "最高分:0 最低分:0 平均分:0";
            }
        }

        protected string CjtoJd(object cjObj)
        {
            if (cjObj == DBNull.Value)
            {
                return "0.00"; // 或者其他适当的默认值
            }

            double cj = Convert.ToDouble(cjObj);
            double jd = (cj >= 60) ? cj / 10.0 : 0;
            return jd.ToString("F2");
        }

    }
}