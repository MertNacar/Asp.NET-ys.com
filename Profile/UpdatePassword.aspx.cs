using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebProje.Profile
{
    public partial class UpdatePassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void UpdatePass_Click(object sender, EventArgs e)
        {
           
            if (OldPasswordtxt.Text.ToString() == NewPasswordtxt.Text.ToString())
            {
                ErrorMessage.Text = "Eski şifrenizle yeni şifreniz aynı, yeni şifrenizin farklı olması gerekmektedir.";
                ErrorMessage.Visible = true;
            }
            else if (OldPasswordtxt.Text.ToString() == Session["SessionPassword"].ToString())
            {
                if (NewPasswordtxt.Text.ToString() != VerifyNewPasswordtxt.Text.ToString())
                {
                    ErrorMessage.Text = "Yeni girdiğiniz şifreler uyuşmuyor. Lütfen kontrol ediniz.";
                    ErrorMessage.Visible = true;
                }
                else
                {

                    SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-0DO7PBE\SQLEXPRESS;Initial Catalog=YetenekSenin;Integrated Security=True");
                    conn.Open();

                    SqlCommand updatePassword = new SqlCommand("UPDATE tblUsers SET Password='" + NewPasswordtxt.Text.ToString() + "' WHERE UserId = " + Session["SessID"], conn);
                    updatePassword.ExecuteNonQuery();
                    conn.Close();
                    UpdatePanel.Visible = false;
                    ErrorMessage.Text = "Şifreniz başarıyla güncellendi.";
                    ErrorMessage.CssClass = "col-12 col-md-3 text-success lead text-center";
                    ErrorMessage.Visible = true;                  
                }

            }
            else
            {
                ErrorMessage.Text = "Eski şifreniz hatalıdır.";
                ErrorMessage.Visible = true;
            }
            
        }
    }
}