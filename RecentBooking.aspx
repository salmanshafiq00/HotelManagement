<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RecentBooking.aspx.cs" Inherits="HotelManagement.RecentBooking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="bg-info p-4 mx-auto text-center display-4 text-white my-3">
            Recent Booking Info (Week)
        </div>
        <asp:DataList ID="DataList1" runat="server" BorderColor="Teal" BorderWidth="2px" CellPadding="10" DataSourceID="sdcRecentBookRepeater" Font-Bold="False" Font-Italic="False" Font-Names="Verdana" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" GridLines="Both" HorizontalAlign="Justify" RepeatColumns="4" BackColor="White" BorderStyle="None" CellSpacing="6">
            <AlternatingItemStyle BackColor="#FFCC66" Font-Bold="False" Font-Italic="False" Font-Overline="False" Font-Strikeout="False" Font-Underline="False" />
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <ItemStyle BackColor="White" ForeColor="#330099" />
            <ItemTemplate>
                BookingID:
                <asp:Label ID="BookingIDLabel" runat="server" Text='<%# Eval("BookingID") %>' />
                <br />
                CustomerName:
                <asp:Label ID="CustomerNameLabel" runat="server" Text='<%# Eval("CustomerName") %>' />
                <br />
                RoomNO:
                <asp:Label ID="RoomNOLabel" runat="server" Text='<%# Eval("RoomNO") %>' />
                <br />
                RoomTypeName:
                <asp:Label ID="RoomTypeNameLabel" runat="server" Text='<%# Eval("RoomTypeName") %>' />
                <br />
                Amount:
                <asp:Label ID="AmountLabel" runat="server" Text='<%# Eval("Amount") %>' />
                <br />
                BookFrom:
                <asp:Label ID="BookFromLabel" runat="server" Text='<%# Eval("BookFrom") %>' />
                <br />
                BookTo:
                <asp:Label ID="BookToLabel" runat="server" Text='<%# Eval("BookTo") %>' />
                <br />
                RoomStatusName:
                <asp:Label ID="RoomStatusNameLabel" runat="server" Text='<%# Eval("RoomStatusName") %>' />
                <br />
<br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
        </asp:DataList>
        <asp:SqlDataSource ID="sdcRecentBookRepeater" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="Select bi.BookingID, cust.CustomerName, r.RoomNO, rt.RoomTypeName, r.Amount,bi.BookFrom, bi.BookTo,  rs.RoomStatusName
From tblBookingInfo bi Inner Join tblCustomer cust  
On bi.CustomerID = cust.CustomerID
Inner Join tblRoom r 
On bi.RoomNo = r.RoomNO
Inner Join tblRoomType rt 
On r.RoomType = rt.RoomTypeID
Inner Join tblRoomStatus rs
On r.RoomStatus = rs.RoomStatusID
WHERE bi.BookFrom &gt;= DATEADD(day, -(DATEPART(WEEKDAY, GETDATE()) + 6), CONVERT(DATE, GETDATE())) "></asp:SqlDataSource>
    </div>
</asp:Content>
