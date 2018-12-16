<%@ Page Title="" Language="C#" MasterPageFile="~/LoginPages/Login.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="WebProje.SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      

    <div class="bg-imageF" >

        <br />
        <br />
        <br />

        <div class="row justify-content-center">
            <input class="col-12 col-md-3 text-box" id="username" placeholder="Username" type="text" required />
        </div>
        <br />
        <br />
        <div class="row justify-content-center">

            <input class="col-12 col-md-3 text-box" id="firstName" placeholder="First Name" type="text" required />
        </div>
        <br />
        <br />
        <div class="row justify-content-center">

            <input class="col-12 col-md-3 text-box" id="lastName" placeholder="Last Name" type="text" required />
        </div>
        <br />
        <br />
        <div class="row justify-content-center">

            <input class="col-12 col-md-3 text-box" id="password" placeholder="Password" type="password" required />
        </div>
        <div class="row justify-content-center ">
            <p class=" col-12 col-md-3 text-light">* Şifreniz en az 6 haneli olmalı ve en az 1 küçük harf, 1 büyük harf ve 1 adet rakam içermelidir.</p>
        </div>
        <br />
        <br />
        <div class="row justify-content-center">

            <input class="col-12 col-md-3 text-box" id="verifyPassword" placeholder="Verify Password" type="password" required />
        </div>

        <br />
        <br />
        <div class="row justify-content-center">
            <input class="col-12 col-md-3 text-box" id="email" placeholder="yeteneksenin@gmail.com" type="email" required />

        </div>
        <br />
        <br />
        <div class="row justify-content-center">

            <asp:Button ID="buttonSignUp" CssClass="btn btn-primary col-12 col-md-2" runat="server" Text="Sign Up" />
        </div>
        <br />
        <br />
        <div class="row justify-content-center">
            <a href="Login.aspx ">
                <p class="lead text-light">
                    Zaten kayıtlı mısınız ?
                </p>

            </a>

        </div>
        <br />
        <div class="row justify-content-center">
            <a href="ForgetPassword.aspx">
                <p class="lead text-light">
                    Şifrenizi mi unuttunuz ?
                </p>

            </a>

        </div>
        <br />
        <br />
        <br />
    </div>
    <div class="row" style="background-color: #007bff; height: 5px;"></div>
</asp:Content>
