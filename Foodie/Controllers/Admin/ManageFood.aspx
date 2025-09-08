<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/OnlineFoodMaster.Master" AutoEventWireup="true" CodeBehind="ManageFood.aspx.cs" Inherits="resturant.ManageFood" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        /* ---------- Form Container ---------- */
.form-container {
    background: #fff;
    padding: 25px;
    border-radius: 12px;
    margin-bottom: 30px;
    box-shadow: 0px 4px 15px rgba(0,0,0,0.1);
    font-family: 'Segoe UI', sans-serif;
}

.form-container h2 {
    margin-bottom: 20px;
    font-size: 22px;
    color: #2c3e50;
    font-weight: 600;
}

/* Form Table */
.form-container table {
    width: 100%;
}

.form-container td {
    padding: 10px 8px;
    font-size: 15px;
    color: #444;
}

/* Input Fields */
.form-control, 
.form-container input[type="text"], 
.form-container input[type="number"], 
.form-container select {
    width: 100%;
    padding: 10px 12px;
    border: 1px solid #ccc;
    border-radius: 6px;
    outline: none;
    font-size: 14px;
    transition: border 0.3s ease, box-shadow 0.3s ease;
}

.form-control:focus {
    border: 1px solid #2980b9;
    box-shadow: 0px 0px 5px rgba(41, 128, 185, 0.5);
}

/* Button */
.btn {
    background: #2980b9;
    color: #fff;
    padding: 10px 18px;
    font-size: 15px;
    font-weight: 600;
    border: none;
    border-radius: 6px;
    cursor: pointer;
    transition: background 0.3s ease;
    display: inline-block;
    margin-top: 10px;
}

.btn:hover {
    background: #1f6694;
}

/* ---------- Grid Container ---------- */
.grid-container {
    background: #fff;
    padding: 25px;
    border-radius: 12px;
    box-shadow: 0px 4px 15px rgba(0,0,0,0.1);
    font-family: 'Segoe UI', sans-serif;
}

.grid-container h2 {
    margin-bottom: 15px;
    font-size: 22px;
    color: #2c3e50;
    font-weight: 600;
}

/* GridView Table Styling */
.table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 10px;
    font-size: 14px;
}

.table th {
    background: #2980b9;
    color: #fff;
    padding: 12px;
    text-align: left;
    border: none;
}

.table td {
    padding: 10px 12px;
    border-bottom: 1px solid #ddd;
    color: #333;
}

.table tr:nth-child(even) {
    background: #f9f9f9;
}

.table tr:hover {
    background: #f1f9ff;
}

/* GridView Command Buttons */
.table a {
    background: #e74c3c;
    color: #fff !important;
    padding: 6px 12px;
    border-radius: 5px;
    text-decoration: none;
    margin-right: 5px;
    font-size: 13px;
    transition: background 0.3s ease;
}

.table a:hover {
    background: #c0392b;
}

    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="form-container">
        <h2>Add New Food Item</h2>
        <table>
            <tr>
                <td>Food Name:</td>
                <td><asp:TextBox ID="txtFoodName" runat="server" CssClass="form-control"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Category:</td>
                <td>
                    <asp:DropDownList ID="ddlCategory" runat="server" CssClass="form-control">
                        <asp:ListItem Text="Select Category" Value="" />
                        <asp:ListItem Text="Pizza" Value="Pizza" />
                        <asp:ListItem Text="Burger" Value="Burger" />
                        <asp:ListItem Text="Drinks" Value="Drinks" />
                        <asp:ListItem Text="Dessert" Value="Dessert" />
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>Price:</td>
                <td><asp:TextBox ID="txtPrice" runat="server" CssClass="form-control"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Upload Image:</td>
                <td><asp:FileUpload ID="fuImage" runat="server" /></td>
            </tr>
            <tr>
                <td colspan="2">
<%--                    <asp:Button ID="btnAddFood" runat="server" Text="Add Food" CssClass="btn" OnClick="btnAddFood_Click" />--%>
                    <asp:Button ID="btnAddFood" runat="server" Text="Add Food" CssClass="btn" />
                </td>
            </tr>
        </table>
    </div>

    <div class="grid-container">
        <h2>Food Items List</h2>
        <asp:GridView ID="gvFoodItems" runat="server" AutoGenerateColumns="False" CssClass="table" DataKeyNames="FoodID">
            <Columns>
                <asp:BoundField DataField="FoodID" HeaderText="ID" />
                <asp:BoundField DataField="FoodName" HeaderText="Food Name" />
                <asp:BoundField DataField="Category" HeaderText="Category" />
                <asp:BoundField DataField="Price" HeaderText="Price" DataFormatString="{0:C}" />
                <asp:ImageField DataImageUrlField="ImagePath" HeaderText="Image" ControlStyle-Width="100px" ControlStyle-Height="80px" />
                <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
    </div>

</asp:Content>
