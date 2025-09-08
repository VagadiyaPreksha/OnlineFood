<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/OnlineFoodMaster.Master" AutoEventWireup="true" CodeBehind="Payments.aspx.cs" Inherits="resturant.Payments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

      <style>
        .payments-container {
            background: #fff;
            padding: 25px;
            border-radius: 12px;
            margin: 20px 0;
            box-shadow: 0px 4px 15px rgba(0,0,0,0.1);
            font-family: 'Segoe UI', sans-serif;
        }

        .payments-container h2 {
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

        .status-success {
            color: #27ae60;
            font-weight: bold;
        }

        .status-pending {
            color: #f39c12;
            font-weight: bold;
        }

        .status-failed {
            color: #e74c3c;
            font-weight: bold;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="payments-container">
        <h2>Payments List</h2>

        <asp:GridView ID="gvPayments" runat="server" AutoGenerateColumns="False" CssClass="table" DataKeyNames="PaymentID">
            <Columns>
                <asp:BoundField DataField="PaymentID" HeaderText="Payment ID" />
                <asp:BoundField DataField="CustomerName" HeaderText="Customer Name" />
                <asp:BoundField DataField="OrderID" HeaderText="Order ID" />
                <asp:BoundField DataField="Amount" HeaderText="Amount" DataFormatString="{0:C}" />
                <asp:BoundField DataField="PaymentMethod" HeaderText="Payment Method" />
                <asp:BoundField DataField="PaymentDate" HeaderText="Payment Date" DataFormatString="{0:dd-MM-yyyy}" />
                <asp:TemplateField HeaderText="Status">
                    <ItemTemplate>
                        <span class='<%# Eval("Status").ToString() == "Success" ? "status-success" : (Eval("Status").ToString() == "Pending" ? "status-pending" : "status-failed") %>'>
                            <%# Eval("Status") %>
                        </span>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>

</asp:Content>
