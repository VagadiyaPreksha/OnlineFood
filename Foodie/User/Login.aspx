<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Foodie.User.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <style>
      body {
          font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
          background: #f4f6f9;
          margin: 0;
          padding: 0;
      }

      .register-container {
          width: 400px;
          margin: 50px auto;
          background: #fff;
          padding: 30px;
          border-radius: 12px;
          box-shadow: 0 8px 20px rgba(0,0,0,0.15);
      }

      .register-container h2 {
          text-align: center;
          font-family: cursive, sans-serif;
          font-size: 28px;
          margin-bottom: 20px;
          color: #333;
      }

      .register-container label {
          display: block;
          margin: 10px 0 5px;
          font-weight: 600;
          font-size: 14px;
          color: #444;
      }

      .register-container input[type="text"],
      .register-container input[type="password"],
      .register-container input[type="email"],
      .register-container input[type="file"] {
          width: 100%;
          padding: 10px;
          border: 1px solid #ccc;
          border-radius: 6px;
          margin-bottom: 15px;
          font-size: 14px;
          transition: 0.3s;
      }

      .register-container input:focus {
          border-color: #007bff;
          outline: none;
          box-shadow: 0 0 5px rgba(0,123,255,0.3);
      }

      /* Radio buttons */
      .register-container .gender {
          margin: 10px 0;
          display: flex;
          align-items: center;
          gap: 10px;
      }

      /* Centered Button */
      .btn-container {
          text-align: center;
          margin-top: 10px;
      }

      .register-container input[type="submit"],
      .register-container asp\:button {
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

      .register-container input[type="submit"]:hover,
      .register-container asp\:button:hover {
          background: #0056b3;
      }

      /* Login link */
      .register-container p {
          margin-top: 15px;
          text-align: center;
          font-size: 14px;
          color: #555;
      }

      .register-container p a {
          color: #007bff;
          font-weight: 600;
          text-decoration: none;
      }

      .register-container p a:hover {
          text-decoration: underline;
      }
   </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                <asp:Button ID="btnlogin" runat="server" Text="Login" OnClick="btnlogin_Click" />
            </td>
        </tr>
    </table>
    <br />
    <span class="switch">Don’t have an account? <a href="Registration.aspx">Register</a></span>
</center>
</asp:Content>
