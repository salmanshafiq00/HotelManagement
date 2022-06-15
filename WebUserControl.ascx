<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControl.ascx.cs" Inherits="HotelManagement.WebUserControl" %>
<div class="row">
    <div class="col-md-6">
        <asp:GridView ID="GridView1" CssClass="table-hover col-md-10" DataKeyNames="RoomTypeID" runat="server" AutoGenerateColumns="False" DataSourceID="odcRoomType" Width="333px" CellPadding="4" ForeColor="#333333" GridLines="None" Height="191px">
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            <Columns>
                <asp:BoundField DataField="RoomTypeID" HeaderText="RoomTypeID" SortExpression="RoomTypeID" />
                <asp:BoundField DataField="RoomTypeName" HeaderText="RoomTypeName" SortExpression="RoomTypeName" />
                <asp:TemplateField ShowHeader="False">
                    <ItemTemplate>
                        <asp:Button ID="Button1" CssClass="btn btn-sm btn-primary btn-white" runat="server" CausesValidation="False" CommandName="Select" Text="Select" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#999999" />
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#E9E7E2" />
            <SortedAscendingHeaderStyle BackColor="#506C8C" />
            <SortedDescendingCellStyle BackColor="#FFFDF8" />
            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
        </asp:GridView>
        <asp:ObjectDataSource ID="odcRoomType" runat="server" SelectMethod="GetRoomType" TypeName="HotelManagement.DataAccessLayer"></asp:ObjectDataSource>

    </div>

    <div class="col-md-6">
        <asp:DetailsView ID="DetailsView1" DataKeyNames="RoomTypeID" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="odcDetails" ForeColor="Black" GridLines="Horizontal" Height="144px" Width="330px" OnItemDeleted="DetailsView1_ItemDeleted" OnItemInserted="DetailsView1_ItemInserted" OnItemUpdated="DetailsView1_ItemUpdated">
            <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="RoomTypeID" HeaderText="RoomTypeID" SortExpression="RoomTypeID" />
                <asp:BoundField DataField="RoomTypeName" HeaderText="RoomTypeName" SortExpression="RoomTypeName" />
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:Button ID="Button1" runat="server" CssClass="btn btn-sm btn-warning btn-white" CausesValidation="True" CommandName="Update" Text="Update" />
                        &nbsp;<asp:Button ID="Button2" runat="server" CssClass="btn btn-sm btn-info btn-white" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        <asp:Button ID="Button1" runat="server" CssClass="btn btn-sm btn-primary btn-white" CausesValidation="True" CommandName="Insert" Text="Insert" />
                        &nbsp;<asp:Button ID="Button2" runat="server" CssClass="btn btn-sm btn-info btn-white" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <asp:Button ID="Button1" runat="server" CausesValidation="False" CssClass="btn btn-sm btn-warning btn-white" CommandName="Edit" Text="Edit" />
                        &nbsp;<asp:Button ID="Button2" runat="server" CssClass="btn btn-sm btn-primary btn-white" CausesValidation="False" CommandName="New" Text="New" />
                        &nbsp;<asp:Button ID="Button3" runat="server" CssClass="btn btn-sm btn-danger btn-white" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Fields>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        </asp:DetailsView>
        <asp:ObjectDataSource ID="odcDetails" runat="server" DeleteMethod="DeleteGroup" InsertMethod="InsertRoomTrype" SelectMethod="GetSelectedType" TypeName="HotelManagement.DataAccessLayer" UpdateMethod="UpdateRoomTrype">
            <DeleteParameters>
                <asp:Parameter Name="RoomTypeID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="RoomTypeID" Type="Int32" />
                <asp:Parameter Name="RoomTypeName" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" DefaultValue="0" Name="RoomTypeID" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="RoomTypeID" Type="Int32" />
                <asp:Parameter Name="RoomTypeName" Type="String" />
            </UpdateParameters>
        </asp:ObjectDataSource>
    </div>
</div>
<br />
<br />
<div class="row">
    <div class="col-md-6">
        <asp:DataList ID="DataList1" DataKeyNames="RoomTypeID" runat="server" BorderColor="#E7E7FF" BorderWidth="1px" CellPadding="3" DataSourceID="odcDataList" GridLines="Horizontal" RepeatColumns="2" BackColor="White" BorderStyle="None" Width="372px">
            <AlternatingItemStyle BackColor="#F7F7F7" />
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <ItemTemplate>
                RoomTypeID:
        <asp:Label ID="RoomTypeIDLabel" runat="server" Text='<%# Eval("RoomTypeID") %>' />
                <br />
                RoomTypeName:
        <asp:Label ID="RoomTypeNameLabel" runat="server" Text='<%# Eval("RoomTypeName") %>' />
                <br />
                <br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
        </asp:DataList>
        <asp:ObjectDataSource ID="odcDataList" runat="server" DeleteMethod="DeleteGroup" InsertMethod="InsertRoomTrype" SelectMethod="GetSelectedType" TypeName="HotelManagement.DataAccessLayer" UpdateMethod="UpdateRoomTrype">
            <DeleteParameters>
                <asp:Parameter Name="RoomTypeID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="RoomTypeID" Type="Int32" />
                <asp:Parameter Name="RoomTypeName" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" DefaultValue="0" Name="RoomTypeID" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="RoomTypeID" Type="Int32" />
                <asp:Parameter Name="RoomTypeName" Type="String" />
            </UpdateParameters>
        </asp:ObjectDataSource>
    </div>

    <div class="col-md-6">
        <asp:FormView ID="FormView1" runat="server" AllowPaging="True" CellPadding="4" DataSourceID="odcFormView" ForeColor="#333333" Height="130px" Width="290px">
            <EditItemTemplate>
                RoomTypeID:
        <asp:TextBox ID="RoomTypeIDTextBox" runat="server" Text='<%# Bind("RoomTypeID") %>' />
                <br />
                RoomTypeName:
        <asp:TextBox ID="RoomTypeNameTextBox" runat="server" Text='<%# Bind("RoomTypeName") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <InsertItemTemplate>
                RoomTypeID:
        <asp:TextBox ID="RoomTypeIDTextBox" runat="server" Text='<%# Bind("RoomTypeID") %>' />
                <br />
                RoomTypeName:
        <asp:TextBox ID="RoomTypeNameTextBox" runat="server" Text='<%# Bind("RoomTypeName") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                RoomTypeID:
        <asp:Label ID="RoomTypeIDLabel" runat="server" Text='<%# Bind("RoomTypeID") %>' />
                <br />
                RoomTypeName:
        <asp:Label ID="RoomTypeNameLabel" runat="server" Text='<%# Bind("RoomTypeName") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:FormView>

        <asp:ObjectDataSource ID="odcFormView" runat="server" DeleteMethod="DeleteGroup" InsertMethod="InsertRoomTrype" OldValuesParameterFormatString="original_{0}" SelectMethod="GetRoomType" TypeName="HotelManagement.DataAccessLayer" UpdateMethod="UpdateRoomTrype">
            <DeleteParameters>
                <asp:Parameter Name="RoomTypeID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="RoomTypeID" Type="Int32" />
                <asp:Parameter Name="RoomTypeName" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="RoomTypeID" Type="Int32" />
                <asp:Parameter Name="RoomTypeName" Type="String" />
            </UpdateParameters>
        </asp:ObjectDataSource>
    </div>
</div>


<br />
 <asp:Repeater ID="Repeater1" runat="server" DataSourceID="odcRepeater"></asp:Repeater>
        <asp:ObjectDataSource ID="odcRepeater" runat="server" DeleteMethod="DeleteGroup" InsertMethod="InsertRoomTrype" OldValuesParameterFormatString="original_{0}" SelectMethod="GetRoomType" TypeName="HotelManagement.DataAccessLayer" UpdateMethod="UpdateRoomTrype">
            <DeleteParameters>
                <asp:Parameter Name="RoomTypeID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="RoomTypeID" Type="Int32" />
                <asp:Parameter Name="RoomTypeName" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="RoomTypeID" Type="Int32" />
                <asp:Parameter Name="RoomTypeName" Type="String" />
            </UpdateParameters>
        </asp:ObjectDataSource>
<br />







