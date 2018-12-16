<%@ Page Title="" Language="C#" MasterPageFile="~/LoginPages/Login.Master" AutoEventWireup="true" CodeBehind="ForgetPassword.aspx.cs" Inherits="WebProje.ForgetPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="bg-imageB text-light">

        <br />
        <br />
        <div id="information">

            <div class="row">
                <p class="lead col-12 col-md-12 text-center">Şifrenizi email yoluyla kurtarmak için "E-mail" butonuna</p>
            </div>

            <div class="row">
                <p class="lead col-12 col-md-12 text-center">Şifrenizi kullanıcı adı yoluyla kurtarmak için "Username" butonuna</p>
            </div>

            <div class="row">
                <p class="lead col-12 col-md-12 text-center">tıklamanız yeterli</p>
            </div>
        </div>
        <br />
        <br />


        <div class="buttons">

            <div class="row justify-content-center">
                <input id="emailBtn" class="btn btn-primary col-12 col-md-2" type="button" value="Email" onclick="Show(this)" />
            </div>

            <br />
            <br />

            <div class="row justify-content-center">

                <input id="UsernameBtn" class="btn btn-primary col-12 col-md-2" type="button" value="Username" onclick="Show(this)" />
            </div>



        </div>




        <div id="emailGroup" style="display: none;">
            <br />
            <br />
            <div id="emailbox" class="row justify-content-center">
                <asp:TextBox ID="emailTextValue" CssClass="col-12 col-md-3" placeholder="E-mail" TextMode="Email" runat="server"></asp:TextBox>
            </div>
            <br />
            <div id="emailText" class="row justify-content-center">
                <a>
                    <p class="lead col-12 col-md-12 ">Şifreni Kullanıcı adın ile kurtarmak istermisin ?</p>

                </a>

            </div>
        </div>

        <div id="userGroup" style="display: none;">
            <br />
            <br />
            <div id="userbox" class="row justify-content-center">
                <asp:TextBox ID="UserTextValue" CssClass="col-12 col-md-3" placeholder="Username" runat="server"></asp:TextBox>
            </div>
            <br />

            <div id="userText" class="row justify-content-center">
                <a>
                    <p class="lead col-12 col-md-12">Şifreni Email ile kurtarmak istermisin ?</p>

                </a>

            </div>
        </div>
        <br />
        <br />
        <br />
        <br />
        <br />
    </div>
    <script>
        function ShowEmail() {
            var email = document.getElementById("emailGroup");
            var username = document.getElementById("userGroup");

            if (email.style.display === "none") {
                email.style.display = "block";
                username.style.display = "none"
            } else {
                email.style.display = "none";
            }
        }

        function ShowUser() {
            var email = document.getElementById("emailGroup");
            var user = document.getElementById("userGroup");

            if (user.style.display === "none") {
                user.style.display = "block";
                email.style.display = "none"
            } else {
                user.style.display = "none";
            }
        }

        function Show(button) {
            var email = document.getElementById("emailGroup");
            var user = document.getElementById("userGroup");
            console.log(button.value);
            if (button.value === "Username") {
                if (user.style.display === "none") {
                    user.style.display = "block";
                    email.style.display = "none"
                } else {
                    user.style.display = "none";
                }
            } else {
                if (email.style.display === "none") {
                    email.style.display = "block";
                    user.style.display = "none"
                } else {
                    email.style.display = "none";
                }
            }
        }
    </script>
</asp:Content>
