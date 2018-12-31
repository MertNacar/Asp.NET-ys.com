<%@ Page Title="" Language="C#" MasterPageFile="~/Profile/UploadPages/Upload.Master" AutoEventWireup="true" CodeBehind="PhotoUpload.aspx.cs" Inherits="WebProje.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .paddingNone {
            padding: 0
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row justify-content-center">
        <p class="display-4 text-center text-primary col-12 col-md-3">Fotoğrafını yükle.</p>
    </div>
    <br />
    <br />
    <br />
    <div class="row justify-content-center">
        <p class="lead col-12 col-md-3 text-light text-center">Fotağraf Yorumu</p>
    </div>

    <div class="row justify-content-center">
        <asp:TextBox CssClass="col-12 col-md-6" ID="PhotoCommtxt" TextMode="multiline" Columns="70" Rows="5" MaxLength="150" placeholder="En fazla 150 karakter" runat="server"></asp:TextBox>
    </div>


    <br />
    <br />

    <div class="row justify-content-center">

        <asp:FileUpload CssClass="lead text-light col-12 col-md-2" ID="FıleImageUpload" runat="server" />

    </div>
    <br />
    <br />

    <div class="row justify-content-center">
        <!--<asp:Label CssClass="col-12 col-md-4" ID="lblDurum" runat="server" Text="Label"></asp:Label>-->
        <asp:Image CssClass="col-12 col-md-4 paddingNone" ID="UploadedImage" runat="server" Visible="false" BorderWidth="5px" BorderColor="#000000" Height="480" Width="854" />
    </div>

    <br />
    <br />

    <div class="row justify-content-center">
        <asp:Button ID="btnShow" CssClass="btn btn-primary col-12 col-md-3 " runat="server" Text="Show" OnClick="btnShowImage_Click" />
    </div>

    <div class="row justify-content-center">
        <asp:Button ID="btnUpload" CssClass="btn btn-primary col-12 col-md-3 " runat="server" Text="Upload" Visible="false" OnClick="btnUploadImage_Click" />
    </div>


</asp:Content>
