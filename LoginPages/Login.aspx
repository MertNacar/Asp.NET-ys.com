<%@ Page Title="" Language="C#" MasterPageFile="~/LoginPages/Login.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebProje.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      
    
    <div class="bg-imageV">
        <br />
        <br />
        <div class="row justify-content-center">
            <input class="col-12 col-md-3 text-box" id="username" placeholder="Username" type="text" />
        </div>
        <br />
        <br />
        <div class="row justify-content-center">
            <input class="col-12 col-md-3 text-box" id="password" placeholder="Password" type="password" />
        </div>
        <br />
        <br />
        <div class="row justify-content-center">
            <asp:Button CssClass="col-12 col-md-2 btn btn-primary" ID="buttonLogin" runat="server" Text="Login" />
        </div>
       <br />
        <br />
        <div class="row justify-content-center">
            <a href="ForgetPassword.aspx">
                <p class="lead text-light">
                    Şifrenizi mi unuttunuz ?
                </p>

            </a>

        </div>
       
        <div class="row justify-content-center">
            <a href="SignUp.aspx">
                <p class="lead text-light">
                    Hala kayıt olmadınız mı ?
                </p>

            </a>

        </div>
        <br />
        <br />
        
    </div>
</asp:Content>
