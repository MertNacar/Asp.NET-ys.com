<%@ Page Title="" Language="C#" MasterPageFile="~/Profile/UploadPages/Upload.Master" AutoEventWireup="true" CodeBehind="VideoUpload.aspx.cs" Inherits="WebProje.UploadPages.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="row justify-content-center">
        <p class="display-4 text-center text-primary col-12 col-md-3">Videonu yükle.</p>
    </div>

    <br />
    <br />
    <br />

    <div class="row justify-content-center">
        <p class="text-center lead text-danger col-12 col-md-2">Video Başlığı : </p>
        <asp:TextBox CssClass="col-12 col-md-2" ID="TextBox1" runat="server"></asp:TextBox>
    </div>
    <br />
    <br />
    <div class="row justify-content-center">
        <p class="text-center lead text-danger col-12 col-md-2">Video Tipi : </p>
        <asp:DropDownList CssClass="col-12 col-md-2" ID="DropDownList1" runat="server">
            <asp:ListItem>Branş Seçiniz</asp:ListItem>
            <asp:ListItem>Futbol</asp:ListItem>
            <asp:ListItem>Basketbol</asp:ListItem>
            <asp:ListItem>Voleybol</asp:ListItem>
        </asp:DropDownList>
    </div>

    <br />
    <br />

    <div class="row justify-content-center">
        <p class="text-center lead text-danger col-12 col-md-2">Video Açıklaması : </p>
        <asp:TextBox CssClass="col-12 col-md-4" ID="VideoCommtxt" TextMode="multiline" Columns="40" Rows="5" MaxLength="150" placeholder="En fazla 150 karakter" runat="server"></asp:TextBox>
    </div>

    <br />
    <br />

    <div class="row justify-content-center">
        <asp:FileUpload CssClass="lead text-light col-12 col-md-2" ID="FıleVideoUpload" runat="server" />
    </div>

    <br />
    <br />
    <div class="row justify-content-center">
        <asp:Button CssClass="btn btn-primary col-12 col-md-3 " ID="ShowVideo" runat="server" Text="Show" />
    </div>


    <div class="row justify-content-center">
        <asp:Button CssClass="btn btn-primary col-12 col-md-3 " ID="UploadVideo" runat="server" Visible="false" Text="Button" />
    </div>

</asp:Content>
