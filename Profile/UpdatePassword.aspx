<%@ Page Title="" Language="C#" MasterPageFile="~/Profile/ProfilePages.Master" AutoEventWireup="true" CodeBehind="UpdatePassword.aspx.cs" Inherits="WebProje.Profile.UpdatePassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <br />
    <div class="row justify-content-center">
        <asp:Label CssClass="col-12 col-md-3 text-danger lead text-center" ID="ErrorMessage" runat="server" Text="Label" Visible="false"></asp:Label>
    </div>
    <br />
    <br />
    <asp:Panel ID="UpdatePanel" runat="server">

        <div class="row justify-content-center">
            <asp:TextBox CssClass="col-12 col-md-3" ID="OldPasswordtxt" placeholder="Old Password" TextMode="Password" runat="server" MaxLength="20" required="required"></asp:TextBox>
        </div>
        <br />
        <br />
        <div class="row justify-content-center">
            <asp:RegularExpressionValidator ID="RegexOldPasword" CssClass="col-12 col-md-3 text-danger" runat="server" ErrorMessage="* Şifreniz en az 6 haneli olmalıdır ve sadece harf veya sayı giriniz." ControlToValidate="OldPasswordtxt" ValidationExpression="[a-zA-Z0-9]*$"></asp:RegularExpressionValidator>
        </div>

        <br />
        <br />


        <div class="row justify-content-center">
            <asp:TextBox CssClass="col-12 col-md-3" ID="NewPasswordtxt" placeholder="New Password" TextMode="Password" runat="server" MaxLength="20" required="required"></asp:TextBox>
        </div>

        <div class="row justify-content-center">
            <asp:RegularExpressionValidator ID="RegexNewPasword" CssClass="col-12 col-md-3 text-danger" runat="server" ErrorMessage="* Şifreniz en az 6 haneli olmalıdır ve sadece harf veya sayı giriniz." ControlToValidate="NewPasswordtxt" ValidationExpression="[a-zA-Z0-9]*$"></asp:RegularExpressionValidator>
        </div>

        <br />
        <br />
        <div class="row justify-content-center">
            <asp:TextBox CssClass="col-12 col-md-3" ID="VerifyNewPasswordtxt" placeholder="Verify New Password" TextMode="Password" runat="server" MaxLength="20" required="required"></asp:TextBox>
        </div>

        <div class="row justify-content-center">
            <asp:RegularExpressionValidator ID="RegexVerifyNewPasword" CssClass="col-12 col-md-3 text-danger" runat="server" ErrorMessage="* Şifreniz en az 6 haneli olmalıdır ve sadece harf veya sayı giriniz." ControlToValidate="VerifyNewPasswordtxt" ValidationExpression="[a-zA-Z0-9]*$"></asp:RegularExpressionValidator>
        </div>

        <br />
        <br />
        <div class="row justify-content-center">
            <asp:Button CssClass="btn btn-primary col-12 col-md-2" ID="UpdatePass" runat="server" Text="Update" OnClick="UpdatePass_Click" />
        </div>
        <br />
        <br />
    </asp:Panel>
</asp:Content>
