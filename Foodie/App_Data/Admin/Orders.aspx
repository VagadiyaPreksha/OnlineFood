<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        .orders-container {
            background: #fff;
            padding: 25px;
            border-radius: 12px;
            margin: 20px 0;
            box-shadow: 0px 4px 15px rgba(0,0,0,0.1);
            font-family: 'Segoe UI', sans-serif;
        }

        .orders-container h2 {
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
            background: #27ae60;
            color: #fff !important;
            padding: 6px 12px;
            border-radius: 5px;
            text-decoration: none;
            font-size: 13px;
            border: none;
            cursor: pointer;
        }

        .btn:hover {
            background: #1e8449;
        }

        .btn-danger {
            background: #e74c3c !important;
        }

        .btn-danger:hover {
            background: #c0392b !important;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="orders-container">
        <h2>Orders Management</h2>

        <asp:GridView ID="gvOrders" runat="server" AutoGenerateColumns="False" CssClass="table" DataKeyNames="OrderID">
            <Columns>
                <asp:BoundField DataField="OrderID" HeaderText="Order ID" />
                <asp:BoundField DataField="CustomerName" HeaderText="Customer" />
                <asp:BoundField DataField="FoodItem" HeaderText="Food Item" />
                <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                <asp:BoundField DataField="TotalPrice" HeaderText="Total Price" DataFormatString="{0:C}" />
                <asp:BoundField DataField="OrderDate" HeaderText="Order Date" DataFormatString="{0:dd-MM-yyyy}" />
                <asp:BoundField DataField="Status" HeaderText="Status" />
                <asp:TemplateField HeaderText="Actions">
                    <ItemTemplate>
                        <asp:DropDownList ID="ddlStatus" runat="server">
                            <asp:ListItem Text="Pending" Value="Pending" />
                            <asp:ListItem Text="Processing" Value="Processing" />
                            <asp:ListItem Text="Delivered" Value="Delivered" />
                            <asp:ListItem Text="Cancelled" Value="Cancelled" />
                        </asp:DropDownList>
                        <asp:Button ID="btnUpdate" runat="server" Text="Update" CssClass="btn" CommandName="UpdateStatus" CommandArgument='<%# Eval("OrderID") %>' />
                        <asp:Button ID="btnDelete" runat="server" Text="Delete" CssClass="btn btn-danger" CommandName="DeleteOrder" CommandArgument='<%# Eval("OrderID") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>

</asp:Content>
