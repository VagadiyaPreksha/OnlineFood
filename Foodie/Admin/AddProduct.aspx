<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/OnlineFoodMaster.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="Foodie.Admin.AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f6f9;
        }

        /* Sidebar */
        .sidebar {
            position: fixed;
            top: 0;
            left: 0;
            width: 220px;
            height: 100%;
            background-color: #1f3b61;
            padding-top: 20px;
            color: white;
        }

            .sidebar h2 {
                text-align: center;
                margin-bottom: 20px;
                font-size: 18px;
            }

            .sidebar ul {
                list-style-type: none;
                padding: 0;
            }

                .sidebar ul li {
                    padding: 12px 20px;
                }

                    .sidebar ul li a {
                        color: white;
                        text-decoration: none;
                        display: block;
                        font-size: 15px;
                        transition: background 0.3s;
                    }

                        .sidebar ul li a:hover {
                            background-color: #2c4d7d;
                            border-radius: 6px;
                        }

        /* Content */
        .content {
            margin-left: 240px; /* leaves space for sidebar */
            padding: 20px;
        }

        /* Form container */
        .form-container {
            width: 400px;
            margin: 40px auto;
            background: #ffffff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
        }

        h1 {
            text-align: center;
            margin-bottom: 25px;
            font-size: 22px;
            font-weight: bold;
            color: #333;
        }

        .form-group {
            margin-bottom: 18px;
        }

        label {
            display: block;
            font-weight: 600;
            margin-bottom: 6px;
            color: #444;
        }

        input[type="text"],
        select,
        .file-upload {
            width: 100%;
            padding: 10px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 6px;
            outline: none;
            box-sizing: border-box;
        }

        .btn {
            width: 100%;
            padding: 12px;
            background: #28a745;
            border: none;
            color: #fff;
            font-size: 16px;
            font-weight: bold;
            border-radius: 6px;
            cursor: pointer;
            transition: background 0.3s;
        }

            .btn:hover {
                background: #218838;
            }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
        <center>
            <h1>Add Product</h1>
            <table>
                <tr>
                    <td>Food Name:</td>
                    <td>
                        <asp:TextBox ID="textfdnm" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Category:</td>
                    <td>
                        <asp:DropDownList ID="drpdwn" runat="server" OnSelectedIndexChanged="drpdwn_SelectedIndexChanged">
                            <asp:ListItem>--Select Food--</asp:ListItem>
                            <asp:ListItem>Burger</asp:ListItem>
                            <asp:ListItem>Pizza</asp:ListItem>
                            <asp:ListItem>Pasta</asp:ListItem>
                            <asp:ListItem>Fries</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Product Configuration:</td>
                    <td>
                        <asp:TextBox ID="txtpconfig" runat="server"></asp:TextBox></td>
                </tr>

                <tr>
                    <td>Price:</td>
                    <td>
                        <asp:TextBox ID="txtprc" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Image:</td>
                    <td>
                        <asp:FileUpload ID="flpimg" runat="server" /></td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Add" /></td>
                </tr>

            </table>
        </center>
    </div>
</asp:Content>
