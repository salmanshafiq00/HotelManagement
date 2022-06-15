<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="HotelManagement._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <div class="row">

            <div class="col-md-6 col-md-offset-3">
                <div class="alert alert-success alert-dismissible">
                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                    <strong>Success!</strong><asp:Label ID="lblMsg" runat="server" ></asp:Label>.
                </div>
            </div>

        </div>
        <div class="row">
            <div class="col-md-12">
                <div id="carouselExampleCaptions" class="carousel slide mt-1" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                        <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                        <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <%--<img src="..." class="d-block w-100" alt="...">--%>
                            <img src="Images/001_hotel-room.jpg" class="d-block w-100" />
                            <div class="carousel-caption d-none d-md-block">
                                <h5>Delux</h5>
                                <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img src="Images/002_HotelRoom.jpg" class="d-block w-100" />
                            <%--<img src="..." class="d-block w-100" alt="...">--%>
                            <div class="carousel-caption d-none d-md-block">
                                <h5>Mervelous</h5>
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <%--<img src="..." class="d-block w-100" alt="...">--%>
                            <img src="Images/003_HotelRoom.jpg" class="d-block w-100" />
                            <div class="carousel-caption d-none d-md-block">
                                <h5>Triangle</h5>
                                <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
                            </div>
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>
        </div>
        <div class="row mt-3">
           
            <div class="col-md-3">
                <div class="card"">
                    <img class="card-img-top" src="Images/002_HotelRoom.jpg" alt="Card image">
                    <div class="card-body">
                        <h4 class="card-title">Regular Package</h4>
                        <p class="card-text">Single-Delux 10000/24hrs.</p>
                        <a href="#" class="btn btn-primary">See Details</a>
                    </div>
                </div>
            </div>

             <div class="col-md-3">
                <div class="card"">
                    <img class="card-img-top" src="Images/001_hotel-room.jpg" alt="Card image">
                    <div class="card-body">
                        <h4 class="card-title">Duo Package</h4>
                        <p class="card-text">Double-Mervelous 15000/24hrs.</p>
                        <a href="#" class="btn btn-primary">See Details</a>
                    </div>
                </div>
            </div>

            <div class="col-md-3">
                <div class="card">
                    <img class="card-img-top" src="Images/003_HotelRoom.jpg" alt="Card image">
                    <div class="card-body">
                        <h4 class="card-title">Triangle Package</h4>
                        <p class="card-text">Team-Gossip 20000/24hrs</p>
                        <a href="#" class="btn btn-primary">See Details</a>
                    </div>
                </div>
            </div>

             <div class="col-md-3">
                <div class="card"">
                    <img class="card-img-top" src="Images/001_hotel-room.jpg" alt="Card image">
                    <div class="card-body">
                        <h4 class="card-title">Family Package</h4>
                        <p class="card-text">Family-Rejoice 22000/3days</p>
                        <a href="#" class="btn btn-primary">See Details</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
