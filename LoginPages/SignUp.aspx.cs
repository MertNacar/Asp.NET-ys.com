using System;
using System.Collections.Generic;
using System.Linq;
using System.Configuration;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls; 

namespace WebProje
{
    public partial class SignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownSport_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void buttonSignUp_Click(object sender, EventArgs e)
        {

            if (passwordtxt.Text.ToString() != verifyPasswordtxt.Text.ToString())
            {
                ErrorMessage.Text = "Şifreniz eşleşmemektedir. Lütfen tekrar kontrol ediniz.";
                ErrorMessage.Visible = true;
            }

            else if(passwordtxt.Text.Length < 6)
            {
                ErrorMessage.Text = "Şifreniz en az 6 haneli olmak zorundadır. Lütfen tekrar kontrol ediniz.";
                ErrorMessage.Visible = true;
            }

            else
            {

                SqlConnection myCon = new SqlConnection(@"Data Source=DESKTOP-0DO7PBE\SQLEXPRESS;Initial Catalog=YetenekSenin;Integrated Security=True");

                SqlCommand SelectUser = new SqlCommand("Select Username FROM tblUsers",myCon);
                SqlCommand SelectEmail = new SqlCommand("Select Email FROM tblUsers",myCon);

                if (Usernametxt.Text.ToString().Trim() == SelectUser.Parameters.ToString())
                {
                    ErrorMessage.Text = "Kullanıcı adınız kullanılmaktadır.";
                    ErrorMessage.Visible = true;
                }
                else if (emailtxt.Text.ToString().Trim() == SelectEmail.Parameters.ToString())
                {
                    ErrorMessage.Text = "Emailiniz zaten kayıtlıdır.";
                    ErrorMessage.Visible = true;
                }
                else
                {
                    myCon.Open();

                    SqlCommand myCom = new SqlCommand("Insert Into tblUsers (Username, Password, Firstname, Surname, Email) Values (@Username, @Password, @Firstname, @Surname, @Email)",myCon);

                    myCom.Parameters.AddWithValue("@Username", Usernametxt.Text.ToString().Trim());

                    myCom.Parameters.AddWithValue("@Password", passwordtxt.Text.ToString().Trim());

                    myCom.Parameters.AddWithValue("@Firstname", firstNametxt.Text.ToString().Trim());

                    myCom.Parameters.AddWithValue("@Surname", surnametxt.Text.ToString().Trim());

                    myCom.Parameters.AddWithValue("@Email", emailtxt.Text.ToString().Trim());


                    // myCom.Parameters.AddWithValue("@email", surnametxt.Text.ToString().Trim());


                
                    myCom.ExecuteNonQuery();
                    myCon.Close();
                    Response.Redirect("Login.aspx");
             }

           }

        }
                
        }
    }
