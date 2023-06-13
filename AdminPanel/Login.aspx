<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="AdminPanel_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="~/Content/css/bootstrap-theme.min.css" rel="stylesheet" />
    <link href="~/Content/css/bootstrap.min.css" rel="stylesheet" />
    <script src="~/Content/js/bootstrap.bundle.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-12 text-center">
                <h1>Login</h1>
            </div>
        </div>
        <hr />
        <br />
        <br />
        <div class="row">
            <div class="col-md-12 text-center" style="color:red;">
                <asp:Label runat="server" ID="lblMessage" EnableViewState="false" ></asp:Label>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-md-4">
                
            </div>
            <div class="col-md-2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Username</strong>
            </div>
            <div class="col-md-6">
                <asp:TextBox ID="txtUserNameLogin" runat="server"  Width="250px" ></asp:TextBox>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-md-4">
                
            </div>
            <div class="col-md-2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Password</strong>
            </div>
            <div class="col-md-6">
                <asp:TextBox ID="txtPasswordLogin" runat="server"  Width="250px" TextMode="Password" ></asp:TextBox>
            </div>
        </div>
        <br />
        <br />
        <div class="row">
            <div class="col-md-6">
                
            </div>
            <div class="col-md-6">
                <asp:Button runat="server" ID="btnLogin" Text="Login" CssClass="btn btn btn-outline-info btn-sm" OnClick="btnLogin_Click" Height="36px" Width="120px" />
            </div>
        </div>
            <br />
            <hr />
            <br />
        <div class="row">
            <div class="col-md-12 text-center">
                New User ?
                &nbsp;&nbsp;|&nbsp;&nbsp;
                <asp:HyperLink runat="server" ID="hlRegister" Text="Register" CssClass="btn btn-light btn-sm" NavigateUrl="~/AdminPanel/Registration" ></asp:HyperLink>
            </div>
        </div>
    </div>
    </form>
</body>
</html>