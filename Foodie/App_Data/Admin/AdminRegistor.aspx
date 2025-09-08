<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminRegistor.aspx.cs" Inherits="resturant.Admin.AdminRegistor" %>

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
            display: flex;
            flex-direction: column;
        }

        .register-form label,
        .register-form asp\:Label {
            font-weight: 600;
            margin-bottom: 5px;
            color: #555;
        }

        .register-form input,
        .register-form .form-control {
            width: 100%;
            padding: 12px 15px;
            font-size: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            outline: none;
            transition: border 0.3s;
        }

        .register-form input:focus,
        .register-form .form-control:focus {
            border-color: #e5ab76;
        }

        .register-form .aspNetRequiredFieldValidator,
        .register-form .aspNetCompareValidator {
            color: red;
            font-size: 12px;
            margin-top: 5px;
        }

        .register-form button,
        .register-form .btn {
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

        .register-form button:hover,
        .register-form .btn:hover {
            background: #d69861;
        }
             </style>
            <section class="register-section">
         <div class="register-form">
    <h2>Admin Registration</h2>
             <div class="form-group">
     <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
     <asp:TextBox ID="txteml" runat="server" CssClass="form-control" placeholder="Email"></asp:TextBox>

     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter your Email.." ControlToValidate="txteml" ForeColor="Red" Display="Dynamic" Font-Size="Small" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RequiredFieldValidator>
 </div>

    <div class="form-group">
    <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>
    <asp:TextBox ID="txtpass" runat="server" CssClass="form-control" TextMode="Password" placeholder="Password"></asp:TextBox>

    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter Your Password.." ControlToValidate="txtpass" ForeColor="Red"></asp:RequiredFieldValidator>
</div>

     <div class="form-group">
     <asp:Label ID="Label6" runat="server" Text="Confirm Password"></asp:Label>
     <asp:TextBox ID="txtcpass" runat="server" CssClass="form-control" TextMode="Password" placeholder="Confirm Password"></asp:TextBox>

     <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password and Confirm Password not be same.." ControlToCompare="txtpass" ControlToValidate="txtcpass" ForeColor="Red"></asp:CompareValidator>
 </div>
         <div class="form-group">
<%--        <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn" BackColor="#1F2433" ForeColor="White" OnClick="btnRegister_Click"/>--%>
             <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn" BackColor="#1F2433" ForeColor="White" /><a href="AdminLogin.aspx" />
        </div>
             </div>

             </section>
    </form>
</body>
</html>
