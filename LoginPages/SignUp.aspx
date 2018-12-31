<%@ Page Title="" Language="C#" MasterPageFile="~/LoginPages/Login.Master" AutoEventWireup="true" CodeBehind="SignUp.aspx.cs" Inherits="WebProje.SignUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .form-control:focus {
            box-shadow:0 0 0 .2rem #007bff;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="bg-imageF">

        <br />
        <div class="row justify-content-center text-danger">
            <asp:Label ID="ErrorMessage" runat="server" Text="Label" Visible="false">

            </asp:Label>
        </div>

        <br />


        <div class="row justify-content-center">
            <asp:TextBox CssClass="col-12 col-md-3 form-control" ID="firstNametxt" placeholder="First Name" runat="server" MaxLength="20" required="required"></asp:TextBox>
        </div>

        <div class="row justify-content-center">
            <asp:RegularExpressionValidator ID="RegexFirstname" CssClass="col-12 col-md-3 text-danger" runat="server" ErrorMessage="* Sadece harf giriniz." ControlToValidate="firstNametxt" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
        </div>


        <br />
        <div class="row justify-content-center">
            <asp:TextBox CssClass="col-12 col-md-3 form-control" ID="surnametxt" placeholder="Last Name" runat="server" MaxLength="25" required="required"></asp:TextBox>
        </div>

        <div class="row justify-content-center">
            <asp:RegularExpressionValidator ID="RegexSurname" CssClass="col-12 col-md-3 text-danger" runat="server" ErrorMessage="* Sadece harf giriniz." ControlToValidate="surnametxt" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>
        </div>


        <br />

        <div class="row justify-content-center">
            <asp:TextBox CssClass="col-12 col-md-3 form-control" ID="Usernametxt" placeholder="Username" runat="server" MaxLength="20" required="required"></asp:TextBox>
        </div>

        <div class="row justify-content-center">
            <asp:RegularExpressionValidator ID="RegexUsername" CssClass="col-12 col-md-3 text-danger" runat="server" ErrorMessage="* Sadece harf veya sayı giriniz." ControlToValidate="Usernametxt" ValidationExpression="[a-zA-Z0-9]*$"></asp:RegularExpressionValidator>
        </div>


        <br />



        <div class="row justify-content-center">
            <asp:TextBox CssClass="col-12 col-md-3 form-control" ID="passwordtxt" placeholder="Password" TextMode="Password" runat="server" MaxLength="20" required="required"></asp:TextBox>
        </div>

        <div class="row justify-content-center">
            <asp:RegularExpressionValidator ID="RegexPasword" CssClass="col-12 col-md-3 text-danger" runat="server" ErrorMessage="* Şifreniz en az 6 haneli olmalıdır ve sadece harf veya sayı giriniz." ControlToValidate="passwordtxt" ValidationExpression="[a-zA-Z0-9]*$"></asp:RegularExpressionValidator>
        </div>


        <br />

        <div class="row justify-content-center">
            <asp:TextBox CssClass="col-12 col-md-3 form-control" ID="verifyPasswordtxt" placeholder="Verify Password" TextMode="Password" runat="server" MaxLength="20" required="required"></asp:TextBox>
        </div>



        <div class="row justify-content-center">
            <asp:RegularExpressionValidator ID="RegexVerifyPassword" CssClass="col-12 col-md-3 text-danger" runat="server" ErrorMessage="*Şifreniz en az 6 haneli olmalıdır ve sadece harf veya sayı giriniz. Sadece harf veya sayı giriniz." ControlToValidate="verifyPasswordtxt" ValidationExpression="[a-zA-Z0-9]*$"></asp:RegularExpressionValidator>
        </div>

        <br />

        <div class="row justify-content-center">
            <asp:TextBox CssClass="col-12 col-md-3 form-control" ID="emailtxt" placeholder="yeteneksenin@gmail.com" TextMode="Email" runat="server" required="required"></asp:TextBox>
        </div>

        <div class="row justify-content-center">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" CssClass="col-12 col-md-3 text-danger" runat="server" ErrorMessage="example@gmail.com/hotmail.com/yahoo.com şeklinde giriniz." ControlToValidate="emailtxt" ValidationExpression="[a-zA-Z0-9]{0,}([.]?[a-zA-Z0-9]{1,})[@](gmail.com|hotmail.com|yahoo.com)"></asp:RegularExpressionValidator>
        </div>


        <br />


        <div class="row justify-content-center">
            <asp:DropDownList CssClass="col-12 col-md-3 form-control" ID="DropDownSport" runat="server" OnSelectedIndexChanged="DropDownSport_SelectedIndexChanged">
                <asp:ListItem>Branş Seçiniz</asp:ListItem>
                <asp:ListItem>Futbol</asp:ListItem>
                <asp:ListItem>Voleybol</asp:ListItem>
                <asp:ListItem>Basketbol</asp:ListItem>

            </asp:DropDownList>
        </div>

        <br />
        <br />

        <div class="row justify-content-center">
            <asp:DropDownList CssClass="col-12 col-md-3 form-control" ID="DropDownLevel" runat="server">
                <asp:ListItem>Seviye Seçiniz</asp:ListItem>
                <asp:ListItem>Amatör</asp:ListItem>
                <asp:ListItem>Profesyonel</asp:ListItem>

            </asp:DropDownList>
        </div>


        <br />
        <br />

        <div class="row justify-content-center">
            <asp:Button ID="buttonSignUp" CssClass="btn btn-primary col-12 col-md-2" runat="server" Text="Sign Up" OnClick="buttonSignUp_Click" />
        </div>


        <br />

        <div class="row justify-content-center">
            <a style="text-decoration: none" href="Login.aspx ">
                <p class="lead text-light">
                    Zaten kayıtlı mısınız ?
                </p>

            </a>

        </div>

        <br />
        <div class="row justify-content-center">
            <a style="text-decoration: none" href="ForgetPassword.aspx">
                <p class="lead text-light">
                    Şifrenizi mi unuttunuz ?
                </p>

            </a>

        </div>
        <br />


    </div>
    <div class="row" style="background-color: #007bff; height: 5px;"></div>

</asp:Content>
