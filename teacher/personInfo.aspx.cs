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
    public partial class personInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id_ls"] == null)
            {
                Response.Write(
                    "<SCRIPT LANGUAGE=\"JavaScript\">alert('你还没有登录');window.location.href='../login.aspx';</SCRIPT>");
            }
            else
            {
                bind();
            }
        }

        private void bind()
        {
            int id = Convert.ToInt32(Session["id_ls"]);
            string sql = "select * from ls where id =" + id;
            Database db = new Database();
            DataTable dt = db.SelectSQL(sql);
            if (dt.Rows.Count > 0)
            {
                lbl_xm.Text = dt.Rows[0]["xm"].ToString();
                lbl_xb.Text = dt.Rows[0]["xb"].ToString();
                lbl_dm.Text = dt.Rows[0]["dm"].ToString();
                lbl_cs.Text = dt.Rows[0]["csrq"].ToString();
                lbl_id.Text = dt.Rows[0]["id"].ToString();
                lbl_dh.Text = dt.Rows[0]["dh"].ToString();
            }
        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("/teacher/modifyPersonInfo.aspx");
        }
    }
}