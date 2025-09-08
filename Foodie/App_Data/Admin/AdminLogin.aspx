<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="resturant.Admin.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <style>
     .register-section {
         padding: 80px 0;
         max-width: 600px;
         margin: auto;
     }

     .register-form {
         background: #fff;
         padding: 30px;
         border: 1px solid #eee;
         border-radius: 6px;
         box-shadow: 0px 2px 8px rgba(0,0,0,0.1);
     }

         .register-form h2 {
             text-align: center;
             margin-bottom: 25px;
             font-size: 26px;
             font-weight: 600;
         }

         .register-form .form-group {
             margin-bottom: 20px;
         }

         .register-form input {
             width: 100%;
             padding: 12px 15px;
             font-size: 15px;
             border: 1px solid #ccc;
             border-radius: 4px;
             outline: none;
             transition: border 0.3s;
         }

             .register-form input:focus {
                 border-color: #e5ab76;
             }

         .register-form button {
             width: 100%;
             background: #e5ab76;
             color: #fff;
             border: none;
             padding: 14px;
             font-size: 16px;
             font-weight: 600;
             text-transform: uppercase;
             border-radius: 4px;
             cursor: pointer;
             transition: background 0.3s;
         }

             .register-form button:hover {
                 background: #d69861;
             }
     </style>
              <section class="register-section">
      <div class="register-form">
          <h2>Admin Login</h2>
          <div class="form-group">
              <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
              <asp:TextBox ID="txteml" runat="server" CssClass="form-control" placeholder="Email"></asp:TextBox>

          </div>
          <div class="form-group">
              <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>
              <asp:TextBox ID="txtpass" runat="server" CssClass="form-control" TextMode="Password" placeholder="Password"></asp:TextBox>

          </div>
          <div class="form-group">
              
<%--              <asp:Button ID="btnlogin" runat="server" Text="Login" CssClass="btn" BackColor="#1F2433" ForeColor="White" OnClick="btnlogin_Click"/>--%>
              <asp:Button ID="btnlogin" runat="server" Text="Login"  CssClass="btn" BackColor="#1F2433" ForeColor="White"/> <a href="Dashboard.aspx" />
          </div>
      </div>
  </section>
        </div>
    </form>
</body>
</html>
