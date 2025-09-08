<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/OnlineFoodMaster.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="resturant.Admin.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <style>
        .dashboard-cards {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 20px;
            margin-top: 20px;
        }
        .card {
            background: #FFFFFF;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 2px 6px rgba(0,0,0,0.1);
            text-align: center;
        }
        .card i {
            font-size: 30px;
            margin-bottom: 10px;
            color: #000000;
        }
        .card h3 {
            font-size: 22px;
            margin-bottom: 5px;
        }
        .card p {
            color: #FFFFFF;
            font-size: 16px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2>Admin Dashboard</h2>

    <div class="dashboard-cards">
        <div class="card">
            <i class="fas fa-hamburger"></i>
            <h3><asp:Label ID="lblFoodItems" runat="server" Text="0"></asp:Label></h3>
            <p>Food Items</p>
        </div>
        <div class="card">
            <i class="fas fa-shopping-cart"></i>
            <h3><asp:Label ID="lblOrders" runat="server" Text="0"></asp:Label></h3>
            <p>Total Orders</p>
        </div>
        <div class="card">
            <i class="fas fa-users"></i>
            <h3><asp:Label ID="lblCustomers" runat="server" Text="0"></asp:Label></h3>
            <p>Customers</p>
        </div>
        <div class="card">
            <i class="fas fa-rupee-sign"></i>
            <h3>₹<asp:Label ID="lblRevenue" runat="server" Text="0"></asp:Label></h3>
            <p>Total Revenue</p>
        </div>
    </div>


</asp:Content>
