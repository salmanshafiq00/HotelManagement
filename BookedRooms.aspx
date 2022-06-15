<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BookedRooms.aspx.cs" Inherits="WebApplication19.BookedRooms" %>
<asp:Content  ID="Content1" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row bg-info my-3 mx-auto">
        <h2 class="text-center mx-auto text-white">Booked Rooms Information</h2>
    </div>
    <div class="mb-2">
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="RoomNO" DataSourceID="sdcBookedRooms">
            <AlternatingItemTemplate>
                <tr style="background-color: #FFFFFF;color: #284775;">
                    <td>
                        <asp:Label ID="RoomNOLabel" runat="server" Text='<%# Eval("RoomNO") %>' />
                    </td>
                    <td>
                        <asp:Label ID="RoomTypeNameLabel" runat="server" Text='<%# Eval("RoomTypeName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="AmountLabel" runat="server" Width="155"  Text='<%# Eval("Amount") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DescriptionLabel" runat="server" Width="350" Text='<%# Eval("Description") %>' />
                    </td>
                    <td>
                        <%--<asp:Label ID="RoomPhotoLabel" runat="server" Text='<%# Eval("RoomPhoto") %>' />--%>
                        <asp:Image ID="itemImage" Width="300" Height="220" ImageUrl='<%# Eval("RoomPhoto") %>' runat="server" />
                    </td>
                    <td>
                        <asp:Label ID="RoomStatusNameLabel" runat="server" Text='<%# Eval("RoomStatusName") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color: #999999;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    </td>
                    <td>
                        <asp:Label ID="RoomNOLabel1" runat="server" Text='<%# Eval("RoomNO") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="RoomTypeNameTextBox" runat="server" Text='<%# Bind("RoomTypeName") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="AmountTextBox" runat="server" Text='<%# Bind("Amount") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="RoomPhotoTextBox" runat="server" Text='<%# Bind("RoomPhoto") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="RoomStatusNameTextBox" runat="server" Text='<%# Bind("RoomStatusName") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    </td>
                    <td>
                        <asp:TextBox ID="RoomNOTextBox" runat="server" Text='<%# Bind("RoomNO") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="RoomTypeNameTextBox" runat="server" Text='<%# Bind("RoomTypeName") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="AmountTextBox" runat="server" Text='<%# Bind("Amount") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="DescriptionTextBox" runat="server" Text='<%# Bind("Description") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="RoomPhotoTextBox" runat="server" Text='<%# Bind("RoomPhoto") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="RoomStatusNameTextBox" runat="server" Text='<%# Bind("RoomStatusName") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color: #E0FFFF;color: #333333;">
                    <td>
                        <asp:Label ID="RoomNOLabel" runat="server" Text='<%# Eval("RoomNO") %>' />
                    </td>
                    <td>
                        <asp:Label ID="RoomTypeNameLabel" runat="server" Text='<%# Eval("RoomTypeName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="AmountLabel" runat="server" Width="155" Text='<%# Eval("Amount") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DescriptionLabel" runat="server" Width="350" Text='<%# Eval("Description") %>' />
                    </td>
                    <td>
                        <%--<asp:Label ID="RoomPhotoLabel" runat="server" Text='<%# Eval("RoomPhoto") %>' />--%>
                        <asp:Image ID="itemImage" Width="300" Height="220" ImageUrl='<%# Eval("RoomPhoto") %>' runat="server" />
                    </td>
                    <td>
                        <asp:Label ID="RoomStatusNameLabel" runat="server" Text='<%# Eval("RoomStatusName") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color: #E0FFFF;color: #333333;">
                                    <th runat="server">RoomNO</th>
                                    <th runat="server">RoomTypeName</th>
                                    <th runat="server">Amount</th>
                                    <th runat="server">Description</th>
                                    <th runat="server">RoomPhoto</th>
                                    <th runat="server">RoomStatusName</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                            <asp:DataPager ID="DataPager1" PageSize="2" PagedControlID="ListView1" runat="server">
                                <Fields>
                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                </Fields>
                            </asp:DataPager>
                        </td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                    <td>
                        <asp:Label ID="RoomNOLabel" runat="server" Text='<%# Eval("RoomNO") %>' />
                    </td>
                    <td>
                        <asp:Label ID="RoomTypeNameLabel" runat="server" Text='<%# Eval("RoomTypeName") %>' />
                    </td>
                    <td>
                        <asp:Label ID="AmountLabel" runat="server" Text='<%# Eval("Amount") %>' />
                    </td>
                    <td>
                        <asp:Label ID="DescriptionLabel" runat="server" Text='<%# Eval("Description") %>' />
                    </td>
                    <td>
                        <asp:Label ID="RoomPhotoLabel" runat="server" Text='<%# Eval("RoomPhoto") %>' />

                    </td>
                    <td>
                        <asp:Label ID="RoomStatusNameLabel" runat="server" Text='<%# Eval("RoomStatusName") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
    </div>
    <asp:SqlDataSource ID="sdcBookedRooms" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="Select r.RoomNO, rt.RoomTypeName, r.Amount, r.Description, r.RoomPhoto, rs.RoomStatusName
From tblRoom r Inner Join tblRoomType rt 
On r.RoomType = rt.RoomTypeID
Inner Join tblRoomStatus rs
On r.RoomStatus = rs.RoomStatusID
where rs.RoomStatusName = 'Reserved'"></asp:SqlDataSource>

    </asp:Content>
