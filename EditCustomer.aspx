<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditCustomer.aspx.cs" Inherits="HotelManagement.EditCustomer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid">
        <div class="row bg-info my-3 mx-auto">
        <h2 class="text-center mx-auto text-white">Edit Customer</h2>
    </div>
        <div class="row">
            <div class="col-md-12 mb-3" style="margin:0; width:100%">
                <asp:ListView ID="LVListCustomer" runat="server" DataKeyNames="CustomerID" DataSourceID="sdcEditCustomer">
                    <AlternatingItemTemplate>
                        <tr style="background-color: #FFF8DC;">
                            <td>
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                            </td>
                            <td>
                                <asp:Label ID="CustomerIDLabel" runat="server" Text='<%# Eval("CustomerID") %>' />
                            </td>
                            <td>
                                <asp:Label ID="CustomerNameLabel" runat="server" Text='<%# Eval("CustomerName") %>' />
                            </td>
                            <td>
                                <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                            </td>
                            <td>
                                <asp:CheckBox ID="IsMarriedCheckBox" runat="server" Checked='<%# Eval("IsMarried") %>' Enabled="false" />
                            </td>
                            <td>
                                <asp:Label ID="MobileNoLabel" runat="server" Text='<%# Eval("MobileNo") %>' />
                            </td>
                            <td>
                                <asp:Label ID="NumberOfMemberLabel" runat="server" Text='<%# Eval("NumberOfMember") %>' />
                            </td>
                            <td>
                                <%--<asp:Image ID="AltItemImage" Width="100" Height="100" ImageUrl='<%# Eval("CustomerPhoto") %>' runat="server" />--%>
                                <asp:Image ID="ItemImage" Width="100" Height="100" ImageUrl='<%# Eval("CustomerPhoto") %>' runat="server" />
                            </td>
                        </tr>
                    </AlternatingItemTemplate>
                    <EditItemTemplate>
                        <tr style="background-color: #008A8C; color: #FFFFFF;">
                            <td>
                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                            </td>
                            <td>
                                <asp:Label ID="CustomerIDLabel1" runat="server" Text='<%# Eval("CustomerID") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="CustomerNameTextBox" runat="server" Text='<%# Bind("CustomerName") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                            </td>
                            <td>
                                <asp:CheckBox ID="IsMarriedCheckBox" runat="server" Checked='<%# Bind("IsMarried") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="MobileNoTextBox" Width="150" runat="server" Text='<%# Bind("MobileNo") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="NumberOfMemberTextBox" Width="100" runat="server" Text='<%# Bind("NumberOfMember") %>' />
                            </td>
                            <td>                         
                                <asp:Image ID="editImage" runat="server" Width="50" Height="50" ImageUrl='<%# Bind("CustomerPhoto") %>'/>

                                <asp:FileUpload ID="fuCustPhoto" runat="server" />
                                <asp:Button ID="btn_preview" runat="server" Text="Preview" OnClick="btn_preview_Click"/>
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
                                <asp:TextBox ID="CustomerIDTextBox" runat="server" Text='<%# Bind("CustomerID") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="CustomerNameTextBox" runat="server" Text='<%# Bind("CustomerName") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                            </td>
                            <td>
                                <asp:CheckBox ID="IsMarriedCheckBox" runat="server" Checked='<%# Bind("IsMarried") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="MobileNoTextBox" runat="server" Text='<%# Bind("MobileNo") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="NumberOfMemberTextBox" runat="server" Text='<%# Bind("NumberOfMember") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="CustomerPhotoTextBox" runat="server" Text='<%# Bind("CustomerPhoto") %>' />
                            </td>
                        </tr>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <tr style="background-color: #DCDCDC; color: #000000;">
                            <td>
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                            </td>
                            <td>
                                <asp:Label ID="CustomerIDLabel" runat="server" Text='<%# Eval("CustomerID") %>' />
                            </td>
                            <td>
                                <asp:Label ID="CustomerNameLabel" runat="server" Text='<%# Eval("CustomerName") %>' />
                            </td>
                            <td>
                                <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                            </td>
                            <td>
                                <asp:CheckBox ID="IsMarriedCheckBox" runat="server" Checked='<%# Eval("IsMarried") %>' Enabled="false" />
                            </td>
                            <td>
                                <asp:Label ID="MobileNoLabel" runat="server" Text='<%# Eval("MobileNo") %>' />
                            </td>
                            <td>
                                <asp:Label ID="NumberOfMemberLabel" runat="server" Text='<%# Eval("NumberOfMember") %>' />
                            </td>
                            <td>
                               
                                <asp:Image ID="ItemImage" Width="100" Height="100" ImageUrl='<%# Eval("CustomerPhoto") %>' runat="server" />
                            </td>
                        </tr>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                        <tr runat="server" style="background-color: #DCDCDC; color: #000000;">
                                            <th runat="server"></th>
                                            <th runat="server">ID</th>
                                            <th runat="server">Name</th>
                                            <th runat="server">Address</th>
                                            <th runat="server">IsMarried</th>
                                            <th runat="server">Mobile</th>
                                            <th runat="server">Member</th>
                                            <th runat="server">Photo</th>
                                        </tr>
                                        <tr id="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" style="text-align: center;background-color: #CCCCCC; font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000">
                                    <asp:DataPager ID="DataPager1" runat="server" PageSize="4" PagedControlID="LVListCustomer">
                                        <Fields>
                                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                        </Fields>
                                    </asp:DataPager>
                                </td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <tr style="background-color: #008A8C; font-weight: bold;color: #FFFFFF;">
                            <td>
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                            </td>
                            <td>
                                <asp:Label ID="CustomerIDLabel" runat="server" Text='<%# Eval("CustomerID") %>' />
                            </td>
                            <td>
                                <asp:Label ID="CustomerNameLabel" runat="server" Text='<%# Eval("CustomerName") %>' />
                            </td>
                            <td>
                                <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                            </td>
                            <td>
                                <asp:CheckBox ID="IsMarriedCheckBox" runat="server" Checked='<%# Eval("IsMarried") %>' Enabled="false" />
                            </td>
                            <td>
                                <asp:Label ID="MobileNoLabel" runat="server" Text='<%# Eval("MobileNo") %>' />
                            </td>
                            <td>
                                <asp:Label ID="NumberOfMemberLabel" runat="server" Text='<%# Eval("NumberOfMember") %>' />
                            </td>
                            <td>
                                <asp:Label ID="CustomerPhotoLabel" runat="server" Text='<%# Eval("CustomerPhoto") %>' />
                            </td>
                        </tr>
                    </SelectedItemTemplate>
                </asp:ListView>
                <asp:SqlDataSource ID="sdcEditCustomer" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [tblCustomer] WHERE [CustomerID] = @CustomerID" InsertCommand="INSERT INTO [tblCustomer] ([CustomerID], [CustomerName], [Address], [IsMarried], [MobileNo], [NumberOfMember], [CustomerPhoto]) VALUES (@CustomerID, @CustomerName, @Address, @IsMarried, @MobileNo, @NumberOfMember, @CustomerPhoto)" SelectCommand="SELECT * FROM [tblCustomer]" UpdateCommand="UPDATE [tblCustomer] SET [CustomerName] = @CustomerName, [Address] = @Address, [IsMarried] = @IsMarried, [MobileNo] = @MobileNo, [NumberOfMember] = @NumberOfMember, [CustomerPhoto] = @CustomerPhoto WHERE [CustomerID] = @CustomerID">
                    <DeleteParameters>
                        <asp:Parameter Name="CustomerID" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="CustomerID" Type="Int32" />
                        <asp:Parameter Name="CustomerName" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="IsMarried" Type="Boolean" />
                        <asp:Parameter Name="MobileNo" Type="Int32" />
                        <asp:Parameter Name="NumberOfMember" Type="Int32" />
                        <asp:Parameter Name="CustomerPhoto" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="CustomerName" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="IsMarried" Type="Boolean" />
                        <asp:Parameter Name="MobileNo" Type="Int32" />
                        <asp:Parameter Name="NumberOfMember" Type="Int32" />
                        <asp:Parameter Name="CustomerPhoto" Type="String" />
                        <asp:Parameter Name="CustomerID" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </div>
</asp:Content>
