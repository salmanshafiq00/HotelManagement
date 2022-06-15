<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditRooms.aspx.cs" Inherits="HotelManagement.EditRooms" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row bg-info my-3 mx-auto">
        <h2 class="text-center mx-auto text-white">Edit Rooms Information</h2>
    </div>
    <div class="row">
        <div class="col-md-7">
            <asp:GridView ID="GV_EditRooms" CssClass="col-md-12 w-100 table table-striped table-hover table-bordered" runat="server" PageSize="4" AutoGenerateColumns="False" DataKeyNames="RoomNO" DataSourceID="sdcEditRoomGV" AllowPaging="True">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" ButtonType="Button" >
                    <ControlStyle CssClass="btn btn-sm btn-primary btn-white" />
                    </asp:CommandField>
                    <asp:BoundField DataField="RoomNO" HeaderText="RoomNO" ReadOnly="True" SortExpression="RoomNO" />
                    <asp:BoundField DataField="RoomType" HeaderText="Type" SortExpression="RoomType" />
                    <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                    <asp:TemplateField HeaderText="Photo" SortExpression="RoomPhoto">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("RoomPhoto") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>

                            <asp:Image ID="Image1" runat="server" Width="70" Height="70" ImageUrl='<%# Bind("RoomPhoto") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="RoomStatus" HeaderText="Status" SortExpression="RoomStatus" />
                </Columns>
                <FooterStyle VerticalAlign="Middle" HorizontalAlign="Center" />
                <PagerSettings Mode="NextPreviousFirstLast" FirstPageText="First" LastPageText="Last" />
                <PagerStyle  HorizontalAlign ="Center" />
            </asp:GridView>
            <asp:SqlDataSource ID="sdcEditRoomGV" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [tblRoom]"></asp:SqlDataSource>
            <br />
        </div>

        <div class="col-md-5">
            <asp:DetailsView ID="DV_EditRooms" CssClass="col-md-12 w-100 table table-striped table-bordered table-hover" DataKeyNames="RoomNO" runat="server" AutoGenerateRows="False" DataSourceID="sdcEditRoomsDV" OnItemDeleted="DV_EditRooms_ItemDeleted" OnItemUpdated="DV_EditRooms_ItemUpdated">
                <Fields>
                    <asp:BoundField DataField="RoomNO" HeaderText="RoomNO" ReadOnly="True" SortExpression="RoomNO" />
                    <asp:BoundField DataField="RoomType" HeaderText="RoomType" SortExpression="RoomType" />
                    <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                    <asp:TemplateField HeaderText="RoomPhoto" SortExpression="RoomPhoto">
                        <EditItemTemplate>

                            <asp:Image ID="imgRoom" Width="150" Height="150" runat="server" ImageUrl='<%# Bind("RoomPhoto") %>' />
                            <asp:FileUpload ID="fuRoomImg" runat="server" />
                            <asp:Button ID="btn_preview" runat="server" Text="Preview" OnClick="btn_preview_Click" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("RoomPhoto") %>'></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" Width="100" Height="100" ImageUrl='<%# Bind("RoomPhoto") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="RoomStatus" HeaderText="RoomStatus" SortExpression="RoomStatus" />
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:Button ID="Button1" CssClass="btn btn-sm btn-warning btn-white" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:Button ID="Button2" runat="server" CssClass="btn btn-sm btn-info btn-white" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Button ID="Button1" runat="server" CssClass="btn btn-warning btn-white" CausesValidation="False" CommandName="Edit" Text="Edit" />
                            &nbsp;<asp:Button ID="Button2" CssClass="btn btn-sm btn-danger btn-white" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                        </ItemTemplate>
                        <FooterStyle CssClass="btn btn-sm btn-primary btn-white" />
                    </asp:TemplateField>
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="sdcEditRoomsDV" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [tblRoom] WHERE [RoomNO] = @RoomNO" InsertCommand="INSERT INTO [tblRoom] ([RoomNO], [RoomType], [Amount], [Description], [RoomPhoto], [RoomStatus]) VALUES (@RoomNO, @RoomType, @Amount, @Description, @RoomPhoto, @RoomStatus)" SelectCommand="SELECT * FROM [tblRoom] WHERE ([RoomNO] = @RoomNO)" UpdateCommand="UPDATE [tblRoom] SET [RoomType] = @RoomType, [Amount] = @Amount, [Description] = @Description, [RoomPhoto] = @RoomPhoto, [RoomStatus] = @RoomStatus WHERE [RoomNO] = @RoomNO">
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
                <SelectParameters>
                    <asp:ControlParameter ControlID="GV_EditRooms" DefaultValue="0" Name="RoomNO" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="RoomType" Type="Int32" />
                    <asp:Parameter Name="Amount" Type="Int32" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="RoomPhoto" Type="String" />
                    <asp:Parameter Name="RoomStatus" Type="Int32" />
                    <asp:Parameter Name="RoomNO" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
