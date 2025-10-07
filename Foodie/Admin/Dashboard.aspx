<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/OnlineFoodMaster.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="resturant.Admin.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <style>
  /* =========================
   Reset & Global Styles
========================= */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

body {
    display: flex;
    min-height: 100vh;
    background: #f5f7fa;
    color: #2c3e50;
}

/* =========================
   Sidebar Styles
========================= */
.sidebar {
    width: 230px;
    background: #1e3a5f;
    color: #ecf0f1;
    padding: 20px 0;
    position: fixed;
    top: 0;
    left: 0;
    height: 100%;
    display: flex;
    flex-direction: column;
    justify-content: space-between;
}

.sidebar h2 {
    text-align: center;
    margin-bottom: 20px;
    font-size: 22px;
    font-weight: bold;
}

.sidebar ul {
    list-style: none;
    padding-left: 0;
}

.sidebar ul li {
    margin: 10px 0;
}

.sidebar ul li a {
    color: #ecf0f1;
    text-decoration: none;
    padding: 12px 20px;
    display: block;
    font-size: 15px;
    border-left: 3px solid transparent;
    transition: all 0.3s ease;
}

.sidebar ul li a:hover {
    background: #2d4a72;
    border-left: 3px solid #00f2fe;
}

.sidebar .logout {
    color: #e74c3c;
    text-decoration: none;
    font-weight: bold;
    display: block;
    padding: 12px 20px;
    margin-top: 20px;
    transition: all 0.3s ease;
}

.sidebar .logout:hover {
    background: rgba(231, 76, 60, 0.1);
}

/* =========================
   Topbar Styles
========================= */
.topbar {
    margin-left: 230px;
    background: #fff;
    padding: 15px 25px;
    display: flex;
    justify-content: flex-end;
    align-items: center;
    box-shadow: 0 2px 6px rgba(0, 0, 0, 0.08);
}

.topbar a {
    color: #2980b9;
    font-weight: 600;
    text-decoration: none;
    transition: color 0.3s ease;
}

.topbar a:hover {
    color: #1e3a5f;
}

/* =========================
   Main Content Styles
========================= */
.main-content {
    margin-left: 230px;
    padding: 30px;
    flex-grow: 1;
}

.main-content h1 {
    margin-bottom: 25px;
    color: #1e3a5f;
    font-size: 26px;
    font-weight: bold;
}

/* =========================
   Dashboard Cards Styles
========================= */
.cards {
    display: flex;
    flex-wrap: wrap;        /* allows wrapping on smaller screens */
    gap: 20px;              /* spacing between cards */
    justify-content: space-between;
}

.card {
    flex: 1;                /* cards take equal width */
    min-width: 200px;       /* ensures they don’t get too small */
    background: #fff;
    padding: 30px;
    text-align: center;
    border-radius: 12px;
    box-shadow: 0 6px 15px rgba(0, 0, 0, 0.08);
    font-size: 20px;
    font-weight: bold;
    color: #1e3a5f;
    transition: all 0.3s ease;
}

.card:hover {
    transform: translateY(-5px);
    box-shadow: 0 10px 20px rgba(0, 0, 0, 0.12);
}

    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<%--    <h2>Admin Dashboard</h2>

    <div class="sidebar">
    <div>
        <h2>Admin</h2>
        <ul>
            <li><a href="Dashboard.aspx">Dashboard</a></li>
            <li><a href="BookTableList.aspx">Book Table</a></li>
            <li><a href="User.aspx">User</a></li>
            <li><a href="AddProduct.aspx">AddProduct</a></li>
            <li><a href="AddFood.aspx">Add Food</a></li>
           </ul>
    </div>
    <a href="#" class="logout">Logout</a>
</div>

<div class="topbar">
    <a href="#">Online Food Ordering</a>
</div>--%>






   


</asp:Content>
