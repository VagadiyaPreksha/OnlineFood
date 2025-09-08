<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="Foodie.Admin.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
                    <center>
            <h1>Login</h1>
    <table>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label><br />
                <asp:TextBox ID="txtunm" runat="server" placeholder="Enter User Name"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label><br />
                <asp:TextBox ID="txtpass" runat="server" TextMode="Password" placeholder="Enter Your Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <%--<asp:Button ID="btnlogin" runat="server" Text="Login" OnClick="btnlogin_Click" />--%>
                <asp:Button ID="btnlogin" runat="server" Text="Login" OnClick="btnlogin_Click"  />
            </td>
        </tr>
    </table>
    <br />
    <span class="switch">Don’t have an account? <a href="Registration.aspx">Register</a></span>
</center>
        </div>
    </form>
</body>
</html>
