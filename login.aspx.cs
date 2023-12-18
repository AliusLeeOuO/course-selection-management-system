using System;
using System.Data;



namespace WebApplication2
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string id = TextBox1.Text;
            string password = TextBox2.Text;
            if (id == "" || password == "")
            {
                Label1.Text = "请输入账号密码";
            }


            string sql=null;
            if(DropDownList1.SelectedValue.ToString()=="3")//学生登入
            {
                sql = "select * from xs where zh='" + id + "' and mm='" + password + "'";
            }
            else if(DropDownList1.SelectedValue.ToString() == "2")//老师登入
            {
                sql = "select * from ls where zh='" + id + "' and mm='" + password + "'";
            } else if (DropDownList1.SelectedValue == "1") // 管理员登入
            {
                sql = "select * from manager where managerUsername = '" + id + "' and managerPassword = '" + password + "'";
            }
            Database db = new Database();
            
            DataTable ds = db.SelectSQL(sql);
            if (ds.Rows.Count > 0)
            {
                if (DropDownList1.SelectedValue == "3")
                {
                    Session["xh"] = ds.Rows[0]["xh"].ToString();
                    Response.Redirect("student//main.aspx");
                }
                else if (DropDownList1.SelectedValue == "2")
                {
                    Session["id_ls"] = ds.Rows[0]["id"].ToString();//绑定老师的id
                    Response.Redirect("teacher//main.aspx");
                } else if (DropDownList1.SelectedValue == "1")
                {
                    Session["id_manager"] = ds.Rows[0]["managerId"].ToString();
                    Response.Redirect("manager//main.aspx");
                }
                Label1.Text = "登入成功";
            }
            else
            {
                Label1.Text = "账号或密码错误！";
            }
        }
    }
}