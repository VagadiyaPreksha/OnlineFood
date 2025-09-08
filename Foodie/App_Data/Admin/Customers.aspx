<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/OnlineFoodMaster.Master" AutoEventWireup="true" CodeBehind="Customers.aspx.cs" Inherits="resturant.Customers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

     <style>
        .customers-container {
            background: #fff;
            padding: 25px;
            border-radius: 12px;
            margin: 20px 0;
            box-shadow: 0px 4px 15px rgba(0,0,0,0.1);
            font-family: 'Segoe UI', sans-serif;
        }

        .customers-container h2 {
            font-size: 22px;
            margin-bottom: 15px;
            color: #2c3e50;
            font-weight: 600;
        }

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
        }

        .table td {
            padding: 10px 12px;
            border-bottom: 1px solid #ddd;
        }

        .table tr:nth-child(even) {
            background: #f9f9f9;
        }

        .table tr:hover {
            background: #f1f9ff;
        }

        .btn {
            background: #e74c3c;
            color: #fff !important;
            padding: 6px 12px;
            border-radius: 5px;
            text-decoration: none;
            font-size: 13px;
            border: none;
            cursor: pointer;
        }

        .btn:hover {
            background: #c0392b;
        }
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="customers-container">
        <h2>Registered Customers</h2>

        <asp:GridView ID="gvCustomers" runat="server" AutoGenerateColumns="False" CssClass="table" DataKeyNames="CustomerID">
            <Columns>
                <asp:BoundField DataField="CustomerID" HeaderText="Customer ID" />
                <asp:BoundField DataField="Name" HeaderText="Name" />
                <asp:BoundField DataField="Email" HeaderText="Email" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" />
                <asp:BoundField DataField="Address" HeaderText="Address" />
                <asp:BoundField DataField="RegDate" HeaderText="Registration Date" DataFormatString="{0:dd-MM-yyyy}" />
                <asp:TemplateField HeaderText="Actions">
                    <ItemTemplate>
                        <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btn" CommandName="DeleteCustomer" CommandArgument='<%# Eval("CustomerID") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>


</asp:Content>
