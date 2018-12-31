<%@ Page Title="" Language="C#" MasterPageFile="~/LoginPages/Login.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebProje.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      
    
    <div class="bg-imageV">
        <br />
        <br />

         <div class="row justify-content-center text-danger">
            <asp:Label ID="ErrorMessage" runat="server" Text="Label" Visible="false">

            </asp:Label>
        </div>
        <br />
        <div class="row justify-content-center">
                        
            <asp:TextBox ID="Usernametxt" runat="server" CssClass="col-12 col-md-3 text-box"  placeholder="Username" required="required" ></asp:TextBox>
                  
        </div>
        <div class="row justify-content-center">
             <asp:RegularExpressionValidator ID="RegexUsername" CssClass="col-12 col-md-3 text-danger" runat="server" ErrorMessage="* Geçerli bir kullanıcı adı giriniz." ControlToValidate="Usernametxt" ValidationExpression="[a-zA-Z0-9]*$"></asp:RegularExpressionValidator>
        </div>

        <br />
        <br />
        <div class="row justify-content-center">
             <asp:TextBox ID="Passwordtxt" runat="server" CssClass="col-12 col-md-3 text-box"  placeholder="Password"  TextMode="Password" required="required" ></asp:TextBox>           
        </div>
        <br />
        <br />
        <div class="row justify-content-center">
            <asp:Button CssClass="col-12 col-md-2 btn btn-primary" ID="buttonLogin" runat="server" Text="Login" OnClick="buttonLogin_Click" />
        </div>
       <br />
        <br />
        <div class="row justify-content-center">
            <a style="text-decoration:none" href="ForgetPassword.aspx">
                <p class="lead text-light">
                    Şifrenizi mi unuttunuz ?
                </p>

            </a>

        </div>
       
        <div class="row justify-content-center">
            <a style="text-decoration:none" href="SignUp.aspx">
                <p class="lead text-light">
                    Hala kayıt olmadınız mı ?
                </p>

            </a>

        </div>
        <br />
        <br />
        
    </div>
</asp:Content>
