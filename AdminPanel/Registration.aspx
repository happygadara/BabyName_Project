<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="AdminPanel_Registration" %>

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
                <h1>Registration</h1>
            </div>
        </div>
        <hr />
        <br />
        <div class="row">
            <div class="col-md-12 text-center" style="color:red;">
                <asp:Label runat="server" ID="lblMessageRegister" EnableViewState="false" ></asp:Label>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-md-4">
                
            </div>
            <div class="col-md-2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>User Name&nbsp;<font color='Red'>*</font></strong>
            </div>
            <div class="col-md-6">
                <asp:TextBox ID="txtUserNameRegister" runat="server"  Width="250px" ></asp:TextBox>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-md-4">
                
            </div>
            <div class="col-md-2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Password&nbsp;<font color='Red'>*</font></strong>
            </div>
            <div class="col-md-6">
                <asp:TextBox ID="txtPasswordRegister" runat="server"  Width="250px" TextMode="Password" ></asp:TextBox>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-md-4">
                
            </div>
            <div class="col-md-2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Display Name&nbsp;<font color='Red'>*</font></strong>
            </div>
            <div class="col-md-6">
                <asp:TextBox ID="txtDisplayNameRegister" runat="server" Width="250px" ></asp:TextBox>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-md-4">
                
            </div>
            <div class="col-md-2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Mobile No</strong>
            </div>
            <div class="col-md-6">
                <asp:TextBox ID="txtMobileNoRegister" runat="server"  Width="250px" ></asp:TextBox>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-md-4">
                
            </div>
            <div class="col-md-2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Email</strong>
            </div>
            <div class="col-md-6">
                <asp:TextBox ID="txtEmailRegister" runat="server"  Width="250px" TextMode="Email" ></asp:TextBox>
            </div>
        </div>
        <br />
        <br />
        <div class="row">
            <div class="col-md-6">
                
            </div>
            <div class="col-md-6">
                <asp:Button runat="server" ID="btnRegister" Text="Register"  CssClass="btn btn-primary" OnClick="btnRegister_Click" Height="36px" Width="120px" />
            </div>
        </div>
        <br />
        <hr />
        <br />
        <div class="row">
            <div class="col-md-12 text-center">
                Already Registered
                &nbsp;&nbsp;|&nbsp;&nbsp;
                <asp:HyperLink runat="server" ID="hlGoToLogin" Text="Login" NavigateUrl="~/AdminPanel/Login" ></asp:HyperLink>
            </div>
        </div>
    </div>
    </form>

</body>
</html>
