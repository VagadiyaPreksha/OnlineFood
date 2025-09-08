<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminRegister.aspx.cs" Inherits="Foodie.Admin.AdminRegister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    <style>
    /* Container */
    .register-container {
        width: 450px;
        margin: 50px auto;
        background: #fff;
        border-radius: 12px;
        padding: 30px;
        box-shadow: 0 5px 20px rgba(0,0,0,0.15);
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    /* Title */
    .register-title {
        text-align: center;
        font-size: 26px;
        font-weight: bold;
        margin-bottom: 20px;
        color: #333;
    }

    /* Labels */
    .register-container label {
        font-weight: 500;
        display: block;
        margin: 8px 0 4px;
        color: #444;
    }

    /* Inputs */
    .register-container input[type=text],
    .register-container input[type=password],
    .register-container input[type=email],
    .register-container input[type=file] {
        width: 100%;
        padding: 10px;
        border-radius: 8px;
        border: 1px solid #ccc;
        outline: none;
        transition: 0.3s;
    }

    .register-container input:focus {
        border-color: #0078d7;
        box-shadow: 0 0 5px rgba(0,120,215,0.5);
    }

    /* Radio buttons */
    .register-container .rdb {
        margin: 6px 0;
    }

    /* Button */
    .register-container .btn {
        width: 100%;
        padding: 12px;
        background: #0078d7;
        border: none;
        border-radius: 8px;
        color: white;
        font-size: 16px;
        font-weight: bold;
        margin-top: 15px;
        cursor: pointer;
        transition: background 0.3s;
    }

        .register-container .btn:hover {
            background: #005fa3;
        }

    /* Switch (login link) */
    .switch {
        display: block;
        text-align: center;
        margin-top: 20px;
        font-size: 14px;
    }

        .switch a {
            color: #0078d7;
            text-decoration: none;
            font-weight: 500;
        }

            .switch a:hover {
                text-decoration: underline;
            }

    /* Validation messages */
    .validation-error {
        color: red;
        font-size: 13px;
    }
</style>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="register-container">
                <p class="register-title">Register</p>

                <center>
                    <table>
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="UserName"></asp:Label><br />
                                <asp:TextBox ID="txtunm" runat="server" Placeholder="Enter Your User Name"></asp:TextBox>

                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label><br />
                                <asp:TextBox ID="txtpass" runat="server" Placeholder="Enter Your Password"></asp:TextBox>

                            </td>
                        </tr>
                        
                      
                        <tr>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text="Gender"></asp:Label><br />
                                <asp:RadioButtonList ID="rdbgrn" runat="server" RepeatDirection="Horizontal">
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                </asp:RadioButtonList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label5" runat="server" Text="Email"></asp:Label><br />
                                <asp:TextBox ID="txteml" runat="server" Placeholder="Enter Your Email"></asp:TextBox>

                            </td>
                        </tr>
                        <tr>
                            <td>

                                <asp:Button ID="btnregister" runat="server" Text="Register" OnClick="btnregister_Click" />
                                </td>
                        </tr>
                    </table>
                </center>
                <span class="switch">Already have an account? <a href="AdminLogin.aspx">AdminLogin</a>
                </span>
            </div>
        </div>
    </form>
</body>
</html>
