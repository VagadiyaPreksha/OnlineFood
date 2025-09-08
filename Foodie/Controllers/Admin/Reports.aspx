<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/OnlineFoodMaster.Master" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="resturant.Admin.Reports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* ===== Reports Section ===== */
.reports_section {
    padding: 25px;
    background-color: #f5f5f5; /* Light grey background */
    border-radius: 10px;
    margin: 20px 0;
    box-shadow: 0 0 15px rgba(0,0,0,0.05);
}

/* Heading */
.reports_heading {
    font-size: 28px;
    font-weight: bold;
    color: #ff4d4d; /* Matches sidebar theme */
    margin-bottom: 25px;
    text-align: center;
}

/* Filter Section */
.filter_section {
    display: flex;
    flex-wrap: wrap;
    align-items: center;
    gap: 12px;
    margin-bottom: 20px;
    justify-content: center;
}

.filter_label {
    font-weight: 600;
    color: #333;
    margin-right: 5px;
}

.filter_input {
    padding: 8px 12px;
    border-radius: 5px;
    border: 1px solid #ccc;
    font-size: 14px;
}

.filter_btn {
    padding: 8px 18px;
    background-color: #ff4d4d;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-weight: 600;
    transition: 0.3s;
}

.filter_btn:hover {
    background-color: #e60000;
}

/* GridView Styling */
.reports_grid {
    width: 100%;
    border-collapse: collapse;
    background-color: white;
    border-radius: 8px;
    overflow: hidden;
    box-shadow: 0 0 10px rgba(0,0,0,0.1);
}

.reports_grid th, .reports_grid td {
    padding: 12px 15px;
    text-align: center;
    border-bottom: 1px solid #ddd;
    font-size: 14px;
}

.reports_grid th {
    background-color: #ff4d4d;
    color: white;
    font-weight: bold;
}

.reports_grid tr:hover {
    background-color: #f1f1f1;
}

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="reports_section">
        <h2 class="reports_heading">Sales Reports</h2>
        
        <!-- Filter Section -->
        <div class="filter_section">
            <asp:Label ID="lblFrom" runat="server" Text="From:" CssClass="filter_label"></asp:Label>
            <asp:TextBox ID="txtFromDate" runat="server" TextMode="Date" CssClass="filter_input"></asp:TextBox>

            <asp:Label ID="lblTo" runat="server" Text="To:" CssClass="filter_label"></asp:Label>
            <asp:TextBox ID="txtToDate" runat="server" TextMode="Date" CssClass="filter_input"></asp:TextBox>

<%--            <asp:Button ID="btnFilter" runat="server" Text="Filter" OnClick="btnFilter_Click" CssClass="filter_btn" />--%>
            <asp:Button ID="btnFilter" runat="server" Text="Filter" CssClass="filter_btn"/>

        </div>

        <!-- GridView -->
        <asp:GridView ID="gvReports" runat="server" AutoGenerateColumns="false" CssClass="reports_grid">
            <Columns>
                <asp:BoundField DataField="OrderID" HeaderText="Order ID" />
                <asp:BoundField DataField="CustomerName" HeaderText="Customer Name" />
                <asp:BoundField DataField="FoodItem" HeaderText="Food Item" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                <asp:BoundField DataField="TotalPrice" HeaderText="Total Price" DataFormatString="{0:C}" />
                <asp:BoundField DataField="OrderDate" HeaderText="Order Date" DataFormatString="{0:dd/MM/yyyy}" />
            </Columns>
        </asp:GridView>
    </div>

</asp:Content>
