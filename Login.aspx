<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="HotelManagement.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" />
    <!-- jQuery library -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>

    <!-- Popper JS -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

    <link href="Content/styles.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container-fluid">
                <div class="card bg-info" id="loginPage">
                    <div class="card-body">
                        <div class="card-title">
                            <h2>Login</h2>
                        </div>
                        <div>
                            <div class="form-group">
                                <asp:Label ID="lblUser" CssClass="form-label" runat="server" Text="UserName"></asp:Label>
                                <asp:TextBox ID="txt_user" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>

                            <div class="form-group">
                                <asp:Label ID="Label1" CssClass="form-label" runat="server" Text="Password"></asp:Label>
                                <asp:TextBox ID="txt_password" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <asp:Button ID="btn_login" CssClass="btn btn-primary" runat="server" Text="Login" OnClick="btn_login_Click" />
                            <br />
                            <div>
                                <asp:Label ID="lblmsg" runat="server" ForeColor="orange" Text="Please Input Valid Username and Password" Visible="False"></asp:Label>
                            </div>
                            <div>
                                <span>user: sa, password: sa2022</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
