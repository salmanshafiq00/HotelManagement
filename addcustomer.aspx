<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" UnobtrusiveValidationMode="None" CodeBehind="addcustomer.aspx.cs" Inherits="WebApplication19.addcustomer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <div class="container-fluid" id="addCustomer">
        <div class="jumbotron mt-2" style="padding-top: 30px !important; padding-bottom: 35px !important;">
            <div class="row">
                <div class="col-md-12 bg-secondary mt-2">
                    <h4 class="text-center">Add Customer</h4>
                </div>
                <div class="col-md-6 mt-3">
                    <%--<div class="form-group">--%>
                    <asp:Label ID="lblCustID" CssClass="form-label" runat="server" Text="CustomerID"></asp:Label>
                    <asp:TextBox ID="txt_cusID" CssClass="form-control w-90" runat="server"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" ControlToValidate="txt_cusID" Type="Integer" Operator="DataTypeCheck" runat="server" ForeColor="red" Text="*" ErrorMessage="Data must be integer number"></asp:CompareValidator>
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="txt_cusID" ForeColor="red" Text="*" ErrorMessage="Customer ID must be between 1 to 1000" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                    <%--</div>--%>

                    <div class="form-group">
                        <asp:Label ID="lblCusName" CssClass="form-label" runat="server" Text="CustomerName"></asp:Label>
                        <asp:TextBox ID="txt_cusName" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>

                    <%--<div class="form-group">--%>
                    <asp:Label ID="lbtCusAddr" CssClass="form-label" runat="server" Text="Address"></asp:Label>
                    <asp:TextBox ID="txt_cusAddr" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txt_cusAddr" runat="server" ForeColor="red" Text="*" ErrorMessage="Field is required"></asp:RequiredFieldValidator>
                    <%--</div>--%>

                    <br />

                    IsMarried:
                <asp:CheckBox ID="ck_married" CssClass="checkbox" runat="server" />
                    <br />
                    <br />

                    <div class="form-group">
                        <asp:Label ID="lblCusMob" CssClass="form-label" runat="server" Text="Mobile Number"></asp:Label>
                        <asp:TextBox ID="txt_cusMob" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationExpression="\d{11}" ControlToValidate="txt_cusMob" ForeColor="red" Text="*" runat="server" ErrorMessage="Input Valid Mobile Number"></asp:RegularExpressionValidator>
                    </div>
                </div>

                <div class="col-md-6 mt-3">
                    <%--<div class="form-group">--%>
                    <asp:Label ID="lblCusMem" CssClass="form-label" runat="server" Text="Number of Member:"></asp:Label>
                    <asp:TextBox ID="txt_cusMem" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" ControlToValidate="txt_cusMem" ForeColor="red" Type="Integer" MinimumValue="1" MaximumValue="10" Text="*" runat="server" ErrorMessage="Member must be below 10"></asp:RangeValidator>
                    <%--</div>--%>

                    <div class="form-group">
                        <div class="row">
                            <div class="col-md-10">
                                <asp:Image ID="cust_img" CssClass="img-thumbnail img-responsive" Width="160" Height="180" runat="server" />
                                <br />
                                <asp:Button ID="btn_preview" CssClass="btn btn-info" runat="server" Text="Preview" OnClick="btn_preview_Click" CausesValidation="False" Width="161px" />
                            </div>

                        </div>
                        <asp:FileUpload ID="fuUpload" CssClass="form-control mt-3" runat="server" />
                    </div>

                    <asp:Button ID="btn_submit" runat="server" CssClass="btn btn-primary" Text="Submit" OnClick="btn_submit_Click" Width="141px" />
                    <br />

                    <asp:SqlDataSource ID="sdcCustomer" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [tblCustomer] WHERE [CustomerID] = @CustomerID" InsertCommand="INSERT INTO [tblCustomer] ([CustomerID], [CustomerName], [Address], [IsMarried], [MobileNo], [NumberOfMember], [CustomerPhoto]) VALUES (@CustomerID, @CustomerName, @Address, @IsMarried, @MobileNo, @NumberOfMember, @CustomerPhoto)" SelectCommand="SELECT * FROM [tblCustomer]" UpdateCommand="UPDATE [tblCustomer] SET [CustomerName] = @CustomerName, [Address] = @Address, [IsMarried] = @IsMarried, [MobileNo] = @MobileNo, [NumberOfMember] = @NumberOfMember, [CustomerPhoto] = @CustomerPhoto WHERE [CustomerID] = @CustomerID">
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
                    <br />
                    <asp:ValidationSummary ID="ValidationSummary1" ForeColor="Red" runat="server" />
                </div>
            </div>
        </div>

    </div>


</asp:Content>
