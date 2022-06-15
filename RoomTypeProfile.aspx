<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RoomTypeProfile.aspx.cs" Inherits="HotelManagement.RoomTypeProfile" %>

<%@ Register Src="~/WebUserControl.ascx" TagPrefix="uc1" TagName="WebUserControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <h2 class="text-center my-3 col-md-12">Hotel Room Type Details</h2>
        </div>
        <div>
            <uc1:webusercontrol runat="server" id="WebUserControl" />
        </div>
    </div>
</asp:Content>
