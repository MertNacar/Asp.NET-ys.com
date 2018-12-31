<%@ Page Title="" Language="C#" MasterPageFile="~/Profile/ProfilePages.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="WebProje.Profile.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="text-light text-center">
            <div class="row justify-content-center">
                <img class="col-12 col-md-2 center" src="../Content/images/profileImage.jpg" style="border-radius: 50%; width: 200px; height: 200px;" />
            </div>
            <br />
            <br />

            <div class="col-12 col-md-5 bg-primary align-content-center" style="height: 5px; margin-left: auto; margin-right: auto"></div>
            
            <br />
            <br />

            <div class="row justify-content-center">
                <p class="col-12 col-md-2 text-center text-danger lead">Firstname:</p>            
                <asp:Label CssClass="col-12 col-md-1" ID="FirstnameLabel" runat="server" Text="Label"></asp:Label>
               
            </div>
            <br />
            <br />
            <div class="row justify-content-center">
                <p class="col-12 col-md-2 text-center text-danger lead">Lastname:</p>
                <asp:Label CssClass="col-12 col-md-1" ID="SurnameLabel" runat="server" Text="Label"></asp:Label>
            </div>
            <br />
            <br />
            <div class="row justify-content-center">
                <p class="col-12 col-md-2 text-center text-danger lead">Username:</p>
                <asp:Label CssClass="col-12 col-md-1" ID="UsernameLabel" runat="server" Text="Label"></asp:Label>
            </div>

            <br />
            <br />


            <div class="row justify-content-center">
                <p class="col-12 col-md-2 text-center text-danger lead">Sport Club:</p>
                <asp:Label CssClass="col-12 col-md-1" ID="SportClubLabel" runat="server" Text="Label"></asp:Label>
            </div>

            <br />
            <br />

            <div class="row justify-content-center">
                <p class="col-12 col-md-1 text-center text-danger lead">Level:</p>
                <asp:Label CssClass="col-12 col-md-1" ID="UserTypeLabel" runat="server" Text="Label"></asp:Label>

            </div>

            <br />
            <br />

            <div class="row justify-content-center">
                <p class="col-12 col-md-1 text-center text-danger lead">Branch:</p>
                <asp:Label CssClass="col-12 col-md-1" ID="BranchLabel" runat="server" Text="Label"></asp:Label>
            </div>

            <br />
            <br />


            <div class="col-12 col-md-5 bg-primary align-content-center" style="height: 5px; margin-left: auto; margin-right: auto"></div>

            <br />
            <br />


            <div class="row justify-content-center">
                <p class="col-12 col-md-1 text-center text-danger lead">About Me</p>
            </div>

            <br />

            <div class="row justify-content-center">
                <asp:Label CssClass="col-12 col-md-5" ID="AboutMeLabel" runat="server" Text="Label">
                 Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi quis libero ut eros sodales consectetur quis et enim. Proin finibus ex vel risus
                 varius posuere. Nulla eget neque at est efficitur tempus. Morbi ultrices, elit ac faucibus bibendum, elit enim semper risus, et tristique sapien dui eget lacus. 
                 Donec porta rhoncus sapien quis ultricies. In in cursus tortor. Vivamus lacinia odio cursus, vulputate lorem sed, dictum tellus. Vivamus finibus quis odio nec porttitor. 
                 Sed efficitur facilisis commodo. Phasellus a molestie nulla, sed sagittis tortor. 
                 Pellentesque vehicula, est eget placerat porta, orci sem commodo sem, quis dictum justo nisi sed nulla. Proin ac consectetur dolor, sit amet condimentum massa.
                </asp:Label>
            </div>

            <br />
            <br />
            <div class="col-12 col-md-5 bg-primary align-content-center" style="height: 5px; margin-left: auto; margin-right: auto"></div>


            <div class="row justify-content-center">
                Videolar
            </div>

             <div class="row justify-content-center">
              
                 <asp:Button CssClass="btn btn-primary col-12 col-md-2" ID="UpdateInfos" runat="server" Text="Update Information" OnClick="UpdateInfos_Click"/>
                <div class="col-12 col-md-1"></div>          
                 <asp:Button CssClass="btn btn-primary col-12 col-md-2" ID="UpdatePass" runat="server" Text="Update Password" OnClick="UpdatePass_Click"/>
            </div>

        </div>

        <br />
        <br />


</asp:Content>
