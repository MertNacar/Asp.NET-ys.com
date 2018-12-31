<%@ Page Title="" Language="C#" MasterPageFile="~/MainPages/Main.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebProje.home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row" style="margin: 50px;background-image: url(../Content/images/cim.jpg);
              background-repeat:repeat; box-shadow: 5px 5px black;">

            <div class="col-12 col-md-12 justify-content-center p-4">
                <a style="text-decoration:none" href="../CategoryPages/Football.aspx">
                <h3 class="lead font-italic text-light">En yeni futbol videoları</h3>
                </a>
               
                <br />
                <div class="card-group">
                    <div class="card" style="box-shadow: 5px 5px black;">
                        <video class="card-img-top" width="320" height="240" controls>
                            <source src="movie.mp4" type="video/mp4">
                            <source src="movie.ogg" type="video/ogg">
                            Tarayıcınız bu videoyu desteklemiyor.
                        </video>
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                        </div>
                        <div class="card-footer">
                            <small class="text-muted">Last updated 3 mins ago</small>
                        </div>
                    </div>
                    <div class="col col-md-1"></div>
                    <div class="card" style="box-shadow: 5px 5px black;">
                        <video class="card-img-top" width="320" height="240" controls>
                            <source src="movie.mp4" type="video/mp4">
                            <source src="movie.ogg" type="video/ogg">
                            Tarayıcınız bu videoyu desteklemiyor.
                        </video>
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                        </div>
                        <div class="card-footer">
                            <small class="text-muted">Last updated 3 mins ago</small>
                        </div>
                    </div>
                    <div class="col col-md-1"></div>
                    <div class="card" style="box-shadow: 5px 5px black;">
                        <video class="card-img-top" width="320" height="240" controls>
                            <source src="movie.mp4" type="video/mp4">
                            <source src="movie.ogg" type="video/ogg">
                            Tarayıcınız bu videoyu desteklemiyor.
                        </video>
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                        </div>
                        <div class="card-footer">
                            <small class="text-muted">Last updated 3 mins ago</small>
                        </div>
                    </div>
                <!--    <div class="col-md-2 align-self-center">
                        DAHA FAZLASI İÇİN

                        <a href="../CategoryPages/Football.aspx">
                            <p class="lead text-light text-center">Daha fazlası için tıkla</p>
                        </a>

                        
                    </div> -->
                </div>

            </div>

        </div>

        <div class="row" style="margin: 50px; background-image: url(../Content/images/basketBack.jpg);
              background-repeat:no-repeat; box-shadow: 5px 5px black;">

            <div class="col-12 col-md-12 justify-content-center p-4">
                <a style="text-decoration:none" href="../CategoryPages/Basketball.aspx">
                <h3 class="lead font-italic text-light">En yeni basketbol videoları</h3>
                </a>
                <br />
               
                <div class="card-group">
                    <div class="card" style="box-shadow: 5px 5px black;">
                        <video class="card-img-top" width="320" height="240" controls>
                            <source src="movie.mp4" type="video/mp4">
                            <source src="movie.ogg" type="video/ogg">
                            Tarayıcınız bu videoyu desteklemiyor.
                        </video>
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                        </div>
                        <div class="card-footer">
                            <small class="text-muted">Last updated 3 mins ago</small>
                        </div>
                    </div>
                    <div class="col col-md-1"></div>
                    <div class="card" style="box-shadow: 5px 5px black;">
                        <video class="card-img-top" width="320" height="240" controls>
                            <source src="movie.mp4" type="video/mp4">
                            <source src="movie.ogg" type="video/ogg">
                            Tarayıcınız bu videoyu desteklemiyor.
                        </video>
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                        </div>
                        <div class="card-footer">
                            <small class="text-muted">Last updated 3 mins ago</small>
                        </div>
                    </div>
                    <div class="col col-md-1"></div>
                    <div class="card" style="box-shadow: 5px 5px black;">
                        <video class="card-img-top" width="320" height="240" controls>
                            <source src="movie.mp4" type="video/mp4">
                            <source src="movie.ogg" type="video/ogg">
                            Tarayıcınız bu videoyu desteklemiyor.
                        </video>
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                        </div>
                        <div class="card-footer">
                            <small class="text-muted">Last updated 3 mins ago</small>
                        </div>
                    </div>
                <!--    <div class="col-md-2 align-self-center">
                    DAHA FAZLASI İÇİN
                        <a href="../CategoryPages/Basketball.aspx">
                            <p class="lead text-light text-center">Daha fazlası için tıkla </p>
                        </a>

                    </div> -->
                </div>

            </div>

        </div>

        <div class="row" style="margin: 50px; background-image: url(../Content/images/volleyBack.jpg);
              background-repeat:no-repeat; background-position:center; box-shadow: 5px 5px black;">

            <div class="col-12 col-md-12 justify-content-center p-4">
                <a style="text-decoration:none" href="../CategoryPages/Volleyball.aspx">
                <h3 class="lead font-italic text-light">En yeni voleybol videoları</h3>
                </a>
                <br />
               
               
                <div class="card-group">

                    <div class="card" style="box-shadow: 5px 5px black;">
                        <video class="card-img-top" width="320" height="240" controls>
                            <source src="movie.mp4" type="video/mp4">
                            <source src="movie.ogg" type="video/ogg">
                            Tarayıcınız bu videoyu desteklemiyor.
                        </video>
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                        </div>
                        <div class="card-footer">
                            <small class="text-muted">Last updated 3 mins ago</small>
                        </div>
                    </div>
                    <div class="col col-md-1"></div>
                    <div class="card" style="box-shadow: 5px 5px black;">
                        <video class="card-img-top" width="320" height="240" controls>
                            <source src="movie.mp4" type="video/mp4">
                            <source src="movie.ogg" type="video/ogg">
                            Tarayıcınız bu videoyu desteklemiyor.
                        </video>
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                        </div>
                        <div class="card-footer">
                            <small class="text-muted">Last updated 3 mins ago</small>
                        </div>
                    </div>
                    <div class="col col-md-1"></div>
                    <div class="card" style="box-shadow: 5px 5px black;">
                        <video class="card-img-top" width="320" height="240" controls>
                            <source src="movie.mp4" type="video/mp4">
                            <source src="movie.ogg" type="video/ogg">
                            Tarayıcınız bu videoyu desteklemiyor.
                        </video>
                        <div class="card-body">
                            <h5 class="card-title">Card title</h5>
                        </div>
                        <div class="card-footer">
                            <small class="text-muted">Last updated 3 mins ago</small>
                        </div>
                    </div>
               <!--     <div class="col-md-2 align-self-center">
                   DAHA FAZLASI İÇİN
                        <a href="../CategoryPages/Volleyball.aspx">
                            <p class="lead text-light text-center">Daha fazlası için tıkla</p>
                        </a>

                    </div> -->
                </div>

            </div>

        </div>


</asp:Content>
