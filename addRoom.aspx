<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="addRoom.aspx.cs" Inherits="WebApplication19.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container-fluid" id="addRoom">
        <div class="jumbotron mt-2" style="padding-top: 30px !important; padding-bottom: 35px !important;">
            <div class="row">
                <h2 class="text-center col-md-12">Add Room Info</h2>
            </div>

            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <asp:Label ID="lblRoomNo" CssClass="form-label" runat="server" Text="Room NO"></asp:Label>
                        <asp:TextBox ID="txt_roomNo" runat="server" CssClass="form-control" PlaceHolder="Room NO"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="lblType" CssClass="form-label" runat="server" Text="Room Type"></asp:Label>
                        <asp:DropDownList ID="ddType" runat="server" CssClass="form-control col-md-12" DataSourceID="scRoomType" DataTextField="RoomTypeName" DataValueField="RoomTypeID" Style="left: 0px; top: 0px; height: 39px" AutoPostBack="True"></asp:DropDownList>
                        <asp:SqlDataSource ID="scRoomType" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [tblRoomType]"></asp:SqlDataSource>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="lblAmount" CssClass="form-label" runat="server" Text="Amount"></asp:Label>
                        <%--<asp:TextBox ID="txt_amount" runat="server" CssClass="form-control" PlaceHolder="Amount"></asp:TextBox>--%>
                        <asp:DropDownList ID="ddlAmount" CssClass="form-control w-100" runat="server" DataSourceID="sdcAmountDDL" DataTextField="AmountLength" DataValueField="AmountID" Height="39px"></asp:DropDownList>
                        <asp:SqlDataSource ID="sdcAmountDDL" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [PackageAmount] WHERE ([AmountID] = @AmountID)">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="ddType" DefaultValue="0" Name="AmountID" PropertyName="SelectedValue" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="lblDesc" CssClass="form-label" runat="server" Text="Description"></asp:Label>
                        <asp:TextBox ID="txt_desc" runat="server" CssClass="form-control" PlaceHolder="Description"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="lblStatus" CssClass="form-label" runat="server" Text="Room Status"></asp:Label>
                        <asp:DropDownList ID="ddStutus" runat="server" CssClass="form-control col-md-12" DataSourceID="roomStatus" DataTextField="RoomStatusName" DataValueField="RoomStatusID">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="roomStatus" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [tblRoomStatus]"></asp:SqlDataSource>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="form-group mt-3">
                        <div class="row">
                            <div class="col-md-12">
                                <asp:Image ID="room_img" CssClass="img-thumbnail col-md-6" Width="310" Height="210" runat="server" />
                            </div>
                            <div class="col-md-12">
                                <asp:Button ID="btn_preview" CssClass="btn btn-info col-md-6" runat="server" Text="Preview" OnClick="btn_preview_Click" />
                            </div>
                        </div>

                        <asp:FileUpload ID="fuPhoto" runat="server" CssClass="form-control mt-3" />
                    </div>



                    <asp:Button ID="btn_submit" runat="server" Text="Submit" CssClass="btn btn-primary" OnClick="btn_submit_Click" Width="186px" />
                </div>
            </div>
        </div>

    </div>
    <asp:SqlDataSource ID="sdcRoomDetails" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [tblRoom] WHERE [RoomNO] = @RoomNO" InsertCommand="INSERT INTO [tblRoom] ([RoomNO], [RoomType], [Amount], [Description], [RoomPhoto], [RoomStatus]) VALUES (@RoomNO, @RoomType, @Amount, @Description, @RoomPhoto, @RoomStatus)" SelectCommand="SELECT * FROM [tblRoom]" UpdateCommand="UPDATE [tblRoom] SET [RoomType] = @RoomType, [Amount] = @Amount, [Description] = @Description, [RoomPhoto] = @RoomPhoto, [RoomStatus] = @RoomStatus WHERE [RoomNO] = @RoomNO">
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

</asp:Content>
