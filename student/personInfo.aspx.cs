using System;
using System.Data;


namespace WebApplication2.student
{
    public partial class personInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["xh"] == null)
            {
                Response.Write("<script>alert('你还没有登录');</script>");
                Response.Redirect("../login.aspx");
            }
            else
            {
                Database db = new Database();
                string xh = Session["xh"].ToString();
                string sql = "select * from xs where xh ='" + xh + "'";
                DataTable dt = db.SelectSQL(sql);
                DataRow dr = dt.Rows[0];
                Label1.Text = dr["xm"].ToString();
                Label2.Text = dr["xb"].ToString();
                Label3.Text = dr["mz"].ToString();
                Label4.Text = dr["csrq"].ToString();
                Label5.Text = dr["xy"].ToString();
                Label6.Text = dr["zy"].ToString();
                Label7.Text = dr["bj"].ToString();
                Label8.Text = dr["sj"].ToString();
                Label9.Text = dr["yx"].ToString();
                Label10.Text = dr["txdz"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("/student/modifypersonInfo.aspx");
        }
    }
}