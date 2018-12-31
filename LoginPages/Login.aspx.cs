using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebProje
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        
 
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }


      protected void buttonLogin_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=DESKTOP-0DO7PBE\SQLEXPRESS;Initial Catalog=YetenekSenin;Integrated Security=True");

            conn.Open();
            
            SqlCommand control = new SqlCommand("SELECT u.UserId, u.Username, u.Password, u.Firstname, u.Surname,  u.Email,  u.PhoneNumber, u.BirthDate, u.AboutMe, "+ 
             "b.FirstBranchTypeName, sc.ClubName, ut.MainUserTypes "+
             "FROM  tblBranchs b INNER JOIN "+
              "tblUsers u ON b.BranchId = u.FBranchId INNER JOIN "+
              "tblSportsClubs sc ON u.FSportsClubs = sc.ClubId INNER JOIN "+
              "tblUserTypes ut ON u.FUsersTypesId = ut.TypeId "+
              "WHERE Username='"+Usernametxt.Text +"'and Password='"+Passwordtxt.Text+"'",conn);
    
            SqlDataReader dr = control.ExecuteReader();

            if (dr.HasRows)
            {

                if (dr.Read())
                {
                    Session.Add("SessID", dr.GetInt32(0));
                    Session.Add("SessionUserName", dr.GetString(1));
                    Session.Add("SessionPassword", dr.GetString(2));
                    Session.Add("SessionFirstName", dr.GetString(3));
                    Session.Add("SessionLastName", dr.GetString(4));
                    Session.Add("SessionEmail", dr.GetString(5));
                    Session.Add("SessionPhoneNumber", dr.GetString(6));
                    Session.Add("SessionBirthDate", dr.GetDateTime(7));
                    Session.Add("SessionAboutMe", dr.GetString(8));
                    Session.Add("SessionBranchTypeName", dr.GetString(9));
                    Session.Add("SessionClubName", dr.GetString(10));
                    Session.Add("SessionMainUserType", dr.GetString(11));


                    Response.Redirect("../MainPages/Home.aspx");
                }
                else
                {
                    ErrorMessage.Text = "* Eksik S Adı veya Şifre";
                    ErrorMessage.Visible = true;
                }
            }

            else
            {     
                ErrorMessage.Text = "* Eksik kullanıcı Adı veya Şifre";
                ErrorMessage.Visible = true;
            }

            conn.Close();
        }
       


        
    }
}