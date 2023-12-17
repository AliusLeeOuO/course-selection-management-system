using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2.teacher
{
    public partial class teacher : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id_ls"] != null)
            {
                lbl_dm.Text = Session["id_ls"].ToString();
                //lbl_dm.Text = Session["dm"].ToString();
            }
        }
    }
}