<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Foodie.User.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   <style>
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: #f4f6f9;
        margin: 0;
        padding: 0;
    }

    .login-container {
        width: 380px;
        margin: 80px auto;
        background: #fff;
        padding: 30px;
        border-radius: 12px;
        box-shadow: 0 8px 20px rgba(0,0,0,0.15);
    }

    .login-container h2 {
        text-align: center;
        font-family: cursive, sans-serif;
        font-size: 28px;
        margin-bottom: 20px;
        color: #333;
    }

    .login-container label {
        display: block;
        margin: 10px 0 5px;
        font-weight: 600;
        font-size: 14px;
        color: #444;
    }

    .login-container input[type="text"],
    .login-container input[type="password"] {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 6px;
        margin-bottom: 15px;
        font-size: 14px;
        transition: 0.3s;
    }

    .login-container input:focus {
        border-color: #007bff;
        outline: none;
        box-shadow: 0 0 5px rgba(0,123,255,0.3);
    }

    /* Centered Button */
    .btn-container {
        text-align: center;
        margin-top: 10px;
    }

    .login-container input[type="submit"],
    .login-container asp\:button {
        padding: 10px 25px;
        background: #007bff;
        border: none;
        border-radius: 6px;
        color: #fff;
        font-size: 15px;
        font-weight: 600;
        cursor: pointer;
        transition: 0.3s;
    }

    .login-container input[type="submit"]:hover,
    .login-container asp\:button:hover {
        background: #0056b3;
    }

    /* Register link */
    .login-container p {
        margin-top: 15px;
        text-align: center;
        font-size: 14px;
        color: #555;
    }

    .login-container p a {
        color: #007bff;
        font-weight: 600;
        text-decoration: none;
    }

    .login-container p a:hover {
        text-decoration: underline;
    }
</style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div class="login-container">
    <h2>Login</h2>

    <label for="username">User Name</label>
    <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control"></asp:TextBox>

    <label for="password">Password</label>
    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>

    <div class="btn-container">
        <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn" OnClick="btnLogin_Click" />
    </div>

    <p>Don’t have an account? <a href="Registration.aspx">Register</a></p>
</div>

</asp:Content>
