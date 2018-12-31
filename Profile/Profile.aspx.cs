using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProje.Profile
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["SessID"] != null)
            {

                UsernameLabel.Text = Session["SessionUserName"].ToString();
                FirstnameLabel.Text = Session["SessionFirstName"].ToString();
                SurnameLabel.Text = Session["SessionLastName"].ToString();
                SportClubLabel.Text = Session["SessionBirthDate"].ToString();
                UserTypeLabel.Text = Session["SessionClubName"].ToString();
                BranchLabel.Text = Session["SessionBranchTypeName"].ToString();
                AboutMeLabel.Text = Session["SessionAboutMe"].ToString();
            }
            else
            {
                Response.Redirect("../LoginPages/Login.aspx");
            }
        }

        protected void UpdateInfos_Click(object sender, EventArgs e)
        {
            Response.Redirect("UpdateInformation.aspx");
        }

        protected void UpdatePass_Click(object sender, EventArgs e)
        {
            Response.Redirect("UpdatePassword.aspx");
        }
    }
}