<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Adimn.Master" AutoEventWireup="true" CodeBehind="Dashbord.aspx.cs" Inherits="Foodie.Admin.Dashbord" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        h2 {
            margin: 20px 0;
            font-size: 28px;
            color: #333;
        }

        .dashboard-cards {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 25px;
            margin-top: 30px;
        }

        .card {
            background: #fff;
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
            text-align: center;
            transition: transform 0.2s ease, box-shadow 0.2s ease;
        }

            .card:hover {
                transform: translateY(-5px);
                box-shadow: 0 10px 25px rgba(0,0,0,0.15);
            }

            .card i {
                font-size: 40px;
                margin-bottom: 12px;
                color: #4CAF50;
            }

            .card h3 {
                font-size: 24px;
                margin-bottom: 8px;
                color: #222;
            }

            .card p {
                color: #555;
                font-size: 16px;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Admin Dashboard</h2>

    <div class="dashboard-cards">
        <div class="card">
            <i class="fas fa-hamburger"></i>
            <h3>
                <asp:Label ID="lblFoodItems" runat="server" Text="0"></asp:Label>
            </h3>
            <p>Food Items</p>
        </div>
        <div class="card">
            <i class="fas fa-shopping-cart"></i>
            <h3>
                <asp:Label ID="lblOrders" runat="server" Text="0"></asp:Label>
            </h3>
            <p>Total Orders</p>
        </div>
        <div class="card">
            <i class="fas fa-users"></i>
            <h3>
                <asp:Label ID="lblCustomers" runat="server" Text="0"></asp:Label>
            </h3>
            <p>Customers</p>
        </div>
        <div class="card">
            <i class="fas fa-indian-rupee-sign"></i>
            <h3>₹<asp:Label ID="lblRevenue" runat="server" Text="0"></asp:Label></h3>
            <p>Total Revenue</p>
        </div>
    </div>
</asp:Content>
