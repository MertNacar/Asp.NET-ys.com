<%@ Page Title="" Language="C#" MasterPageFile="~/Profile/UploadPages/Upload.Master" AutoEventWireup="true" CodeBehind="UpdateInfo.aspx.cs" Inherits="WebProje.UpdateInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   
    <div class="row justify-content-center">
        <p class="text-center lead text-danger col-12 col-md-2">Username: </p>
        <asp:TextBox CssClass="col-12 col-md-2" ID="TextBox1" runat="server" required ="required"></asp:TextBox>
    </div>
    <br />
    <br />


    <div class="row justify-content-center">
        <p class="text-center lead text-danger col-12 col-md-2">BirthDate : </p>
        <asp:TextBox CssClass="col-12 col-md-2" ClientIDMode="Static" ID="BirthDatetxt"  runat="server"  TextMode="Date" required ="required"></asp:TextBox>
    </div>
    <br />
    <br />

    <div class="row justify-content-center">
        <p class="text-center lead text-danger col-12 col-md-2">Phone Number : </p>
        <asp:TextBox CssClass="col-12 col-md-2" ID="TextBox5" runat="server" required ="required"></asp:TextBox>
    </div>
    <br />
    <br />

    <div class="row justify-content-center">
        <p class="text-center lead text-danger col-12 col-md-2">Password : </p>
        <asp:TextBox CssClass="col-12 col-md-2" ID="TextBox6" runat="server" required ="required"></asp:TextBox>
    </div>
    <br />
    <br />

    <div class="row justify-content-center">
        <p class="text-center lead text-danger col-12 col-md-2">Verify Password : </p>
        <asp:TextBox CssClass="col-12 col-md-2" ID="TextBox4" runat="server" required ="required"></asp:TextBox>
    </div>
    <br />
    <br />

    <div class="row justify-content-center">
        <p class="text-center lead text-danger col-12 col-md-2">Spor Kulübü : </p>
        <asp:TextBox CssClass="col-12 col-md-2" ID="TextBox2" runat="server" required ="required"></asp:TextBox>
    </div>
    <br />
    <br />

    <div class="row justify-content-center">
        <p class="text-center lead text-danger col-12 col-md-2">Seviye : </p>
        <asp:DropDownList CssClass="col-12 col-md-2" ID="DropDownLevelUpdate" runat="server" required ="required">
                <asp:ListItem>Seviye Seçiniz</asp:ListItem>
                <asp:ListItem>Amatör</asp:ListItem>
                <asp:ListItem>Profesyonel</asp:ListItem>

            </asp:DropDownList>

    </div>
   
    <div class="row justify-content-center">
            <asp:RequiredFieldValidator CssClass="col-12 col-md-3 text-danger text-center" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Lutfen Geçerli bir değer seçiniz" ControlToValidate="DropDownLevelUpdate" InitialValue="Seviye Seçiniz"></asp:RequiredFieldValidator>
        </div>
    <br />
    <br />

    <div class="row justify-content-center">
        <p class="text-center lead text-danger col-12 col-md-2">Branş : </p>
        <asp:DropDownList CssClass="col-12 col-md-2" ID="DropDownSportUpdate" runat="server" OnSelectedIndexChanged="DropDownSportUpdate_SelectedIndexChanged" required ="required">
                <asp:ListItem>Branş Seçiniz</asp:ListItem>
                <asp:ListItem>Futbol</asp:ListItem>
                <asp:ListItem>Voleybol</asp:ListItem>
                <asp:ListItem>Basketbol</asp:ListItem>

            </asp:DropDownList>
       
    </div>
    
    <div class="row justify-content-center">
            <asp:RequiredFieldValidator CssClass="col-12 col-md-3 text-danger text-center" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Lutfen Geçerli bir değer seçiniz" ControlToValidate="DropDownSportUpdate" InitialValue="Branş Seçiniz"></asp:RequiredFieldValidator>
        </div>
    
    <br />
    <br />

  


    <div class="row justify-content-center">
        <p class="text-center lead text-danger col-12 col-md-2">About Me : </p>
        <asp:TextBox   TextMode="multiline" Rows="5" CssClass="col-12 col-md-2" ID="TextBox8" runat="server" required ="required"></asp:TextBox>
    </div>
    <br />
    <br />

      <div class="row justify-content-center">
        <asp:Button CssClass="btn btn-primary col-12 col-md-2 " ID="btnUpdateInfo" runat="server" Visible="true" Text="Save" OnClick="btnUpdateInfo_Click" />
    </div>
         


</asp:Content>
