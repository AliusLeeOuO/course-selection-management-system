using System;
using System.Web.UI.WebControls;
using System.Data;

namespace WebApplication2.student
{
    public partial class selectCourse : System.Web.UI.Page
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
            string sql = "SELECT kcdm, kcmc, dm, xm, xf, dd, (SELECT COUNT(*) FROM kc_xs WHERE xh='" + xh + "' AND kcdm=kc.kcdm) AS flag, kclx FROM kc, ls WHERE kc.id_ls=ls.id";
            Database db = new Database();
            DataTable dt = db.SelectSQL(sql);

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        
        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            // 在这里可以对每一行的数据进行处理
        }
        private void delete(string xh)
        {
            string sql = "delete from kc_xs where xh='"+xh+"'";
            Database db = new Database();
            db.ExecSQL(sql);
        }

        private void insert(string xh,string kcdm)
        {
            string sql = "insert into kc_xs(xh,kcdm) values('"+xh+ "','" + kcdm + "')";
            
            Console.WriteLine(sql);
            
            Database db = new Database();
            db.ExecSQL(sql);
        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            string xh = Session["xh"].ToString();
            delete(xh); // 先删除原有的选课记录

            foreach (GridViewRow row in GridView1.Rows)
            {
                CheckBox checkBox = (CheckBox)row.FindControl("CheckBox1");
                if (checkBox != null && checkBox.Checked)
                {
                    // 获取课程代码
                    string kcdm = row.Cells[1].Text; // 假设课程代码位于第二列
                    // 在控制台打印所有被选中的课程代码
                    Console.WriteLine(kcdm);
                    
                    
                    
                    insert(xh, kcdm); // 插入新的选课记录
                }
            }

            BindGridView(); // 重新绑定数据，以反映新的选课状态
            Response.Write("<script>alert('保存成功!');</script>"); // 显示保存成功的消息
        }

    }
}