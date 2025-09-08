<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/OnlineFoodMaster.Master" AutoEventWireup="true" CodeBehind="Feedbacks.aspx.cs" Inherits="resturant.Feedbacks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        /* ===== Feedback Section ===== */
.feedback_section {
    padding: 25px;
    background-color: #f5f5f5; /* Light grey background */
    border-radius: 10px;
    margin: 20px 0;
    box-shadow: 0 0 15px rgba(0,0,0,0.05);
}

/* Heading */
.feedback_heading {
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
.feedback_grid {
    width: 100%;
    border-collapse: collapse;
    background-color: white;
    border-radius: 8px;
    overflow: hidden;
    box-shadow: 0 0 10px rgba(0,0,0,0.1);
}

.feedback_grid th, .feedback_grid td {
    padding: 12px 15px;
    text-align: center;
    border-bottom: 1px solid #ddd;
    font-size: 14px;
}

.feedback_grid th {
    background-color: #ff4d4d;
    color: white;
    font-weight: bold;
}

.feedback_grid tr:hover {
    background-color: #f1f1f1;
}

/* Make GridView scrollable on small screens */
@media screen and (max-width: 768px) {
    .feedback_grid {
        display: block;
        overflow-x: auto;
    }
}

    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="feedback_section">
        <h2 class="feedback_heading">Customer Feedbacks</h2>

        <!-- Filter Section -->
        <div class="filter_section">
            <asp:Label ID="lblFrom" runat="server" Text="From:" CssClass="filter_label"></asp:Label>
            <asp:TextBox ID="txtFromDate" runat="server" TextMode="Date" CssClass="filter_input"></asp:TextBox>

            <asp:Label ID="lblTo" runat="server" Text="To:" CssClass="filter_label"></asp:Label>
            <asp:TextBox ID="txtToDate" runat="server" TextMode="Date" CssClass="filter_input"></asp:TextBox>

<%--            <asp:Button ID="btnFilter" runat="server" Text="Filter" CssClass="filter_btn" OnClick="btnFilter_Click" />--%>
            <asp:Button ID="btnFilter" runat="server" Text="Filter" CssClass="filter_btn" />

        </div>

        <!-- GridView -->
        <asp:GridView ID="gvFeedbacks" runat="server" AutoGenerateColumns="false" CssClass="feedback_grid">
            <Columns>
                <asp:BoundField DataField="FeedbackID" HeaderText="ID" />
                <asp:BoundField DataField="CustomerName" HeaderText="Customer Name" />
                <asp:BoundField DataField="Email" HeaderText="Email" />
                <asp:BoundField DataField="Message" HeaderText="Feedback Message" />
                <asp:BoundField DataField="FeedbackDate" HeaderText="Date" DataFormatString="{0:dd/MM/yyyy}" />
            </Columns>
        </asp:GridView>
    </div>

</asp:Content>
