<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddBooking.aspx.cs" Inherits="WebApplication19.AddBooking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid">

        <div class="row mt-3">
            <div class="col-md-1">
            </div>
            <div class="col-md-10">
                <div class="jumbotron" style="padding-top: 35px !important;">
                    <h2 class="text-center text-dark px-5 mb-3" style="margin-top: -15px">Add Booking Info</h2>

                    <div class="form-group row">
                        <asp:Label ID="lblBookID" CssClass="form-label col-md-2" runat="server" Text="BookingID"></asp:Label>
                        <asp:TextBox ID="txt_bookId" CssClass="form-control col-md-10" runat="server"></asp:TextBox>
                    </div>

                    <div class="form-group mt-2 row">
                        <asp:Label ID="lblCustName" CssClass="form-label col-md-2" runat="server" Text="Customer Name"></asp:Label>

                        <asp:DropDownList ID="ddCustID" CssClass="col-md-8" runat="server" DataSourceID="sdcDlCusID" DataTextField="CustomerName" DataValueField="CustomerID" Height="33px" Width="440px"></asp:DropDownList>
                        <asp:SqlDataSource ID="sdcDlCusID" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [CustomerID], [CustomerName] FROM [tblCustomer]"></asp:SqlDataSource>

                        <asp:Menu ID="Menu1" runat="server" CssClass="btn btn-sm btn-info text-white col-md-2" ForeColor="White" Width="90px">
                            <Items>
                                <asp:MenuItem NavigateUrl="~/addcustomer.aspx" Text="Add Customer" />
                            </Items>
                        </asp:Menu>
                    </div>

                    <div class="form-group row">
                        <asp:Label ID="lblRoomNo" CssClass="form-label col-md-2" runat="server" Text="RoomNo"></asp:Label>
                        <asp:DropDownList ID="ddRoomNo" runat="server" CssClass="col-md-10" DataSourceID="sdcDlRomNo" DataTextField="RoomNO" DataValueField="RoomNO" Height="32px" Width="439px"></asp:DropDownList>
                        <asp:SqlDataSource ID="sdcDlRomNo" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="Select r.RoomNO
From tblRoom r  Inner Join tblRoomStatus rs
On r.RoomStatus = rs.RoomStatusID
Where rs.RoomStatusName = 'Available'"></asp:SqlDataSource>
                    </div>

                    <div class="form-group row">
                        <asp:Label ID="lblFrom" CssClass="form-label col-md-2" runat="server" Text=" Book From:"></asp:Label>
                        <asp:TextBox ID="bookFrom" CssClass="form-control col-md-10" TextMode="Date" runat="server"></asp:TextBox>
                    </div>

                    <div class="form-group row">
                        <asp:Label ID="lblTo" CssClass="form-label col-md-2" runat="server" Text=" Book To:"></asp:Label>
                        <asp:TextBox ID="bookTo" CssClass="form-control col-md-10" TextMode="Date" runat="server"></asp:TextBox>
                    </div>
                    <div class="row">
                        <div class="col-md-2">
                        </div>

                        <div class="col-md-2">
                            <asp:Button ID="btn_submit" runat="server" CssClass="btn btn-primary" Text="Submit" OnClick="btn_submit_Click" />
                        </div>

                        <div class="col-md-8">
                            <div class="row">
                                <div class="col-md-1">
                                </div>

                                <div class="col-md-8">
                                    <div class="alert alert-success alert-dismissible .d-md-none" id="displayMsg" runat="server" visible="false">
                                        <button type="button" class="close" data-dismiss="alert">&times;</button>
                                        <strong>Success! </strong><asp:Label ID="lblMsg" runat="server"></asp:Label>.
                                    </div>
                                </div>

                                <div class="col-md-3">
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <div class="col-md-1">
                <asp:SqlDataSource ID="sqlForRoomStatus" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [tblRoom] WHERE [RoomNO] = @RoomNO" InsertCommand="INSERT INTO [tblRoom] ([RoomNO], [RoomType], [Amount], [Description], [RoomPhoto], [RoomStatus]) VALUES (@RoomNO, @RoomType, @Amount, @Description, @RoomPhoto, @RoomStatus)" SelectCommand="SELECT * FROM [tblRoom]" UpdateCommand="UPDATE [tblRoom] SET [RoomType] = @RoomType, [Amount] = @Amount, [Description] = @Description, [RoomPhoto] = @RoomPhoto, [RoomStatus] = @RoomStatus WHERE [RoomNO] = @RoomNO">
                    <DeleteParameters>
                        <asp:Parameter Name="RoomNO" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="RoomNO" Type="Int32" />
                        <asp:Parameter Name="RoomType" Type="Int32" />
                        <asp:Parameter Name="Amount" Type="Int32" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="RoomPhoto" Type="String" />
                        <asp:Parameter Name="RoomStatus" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="RoomType" Type="Int32" />
                        <asp:Parameter Name="Amount" Type="Int32" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="RoomPhoto" Type="String" />
                        <asp:Parameter Name="RoomStatus" Type="Int32" />
                        <asp:Parameter Name="RoomNO" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                <asp:SqlDataSource ID="sdcAddBookings" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [tblBookingInfo] WHERE [BookingID] = @BookingID" InsertCommand="INSERT INTO [tblBookingInfo] ([BookingID], [CustomerID], [RoomNo], [BookFrom], [BookTo]) VALUES (@BookingID, @CustomerID, @RoomNo, @BookFrom, @BookTo)" SelectCommand="SELECT * FROM [tblBookingInfo]" UpdateCommand="UPDATE [tblBookingInfo] SET [CustomerID] = @CustomerID, [RoomNo] = @RoomNo, [BookFrom] = @BookFrom, [BookTo] = @BookTo WHERE [BookingID] = @BookingID">
                    <DeleteParameters>
                        <asp:Parameter Name="BookingID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="BookingID" Type="Int32" />
                        <asp:Parameter Name="CustomerID" Type="Int32" />
                        <asp:Parameter Name="RoomNo" Type="Int32" />
                        <asp:Parameter Name="BookFrom" Type="DateTime" />
                        <asp:Parameter Name="BookTo" Type="DateTime" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="CustomerID" Type="Int32" />
                        <asp:Parameter Name="RoomNo" Type="Int32" />
                        <asp:Parameter Name="BookFrom" Type="DateTime" />
                        <asp:Parameter Name="BookTo" Type="DateTime" />
                        <asp:Parameter Name="BookingID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </div>
</asp:Content>
