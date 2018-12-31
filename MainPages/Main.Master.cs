using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProje
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["SessID"] != null)
            {

                UserNametxt.Text = Session["SessionUserName"].ToString();
            }
            else
            {
                Response.Redirect("../LoginPages/Login.aspx");
            }

        }

       
    }
}