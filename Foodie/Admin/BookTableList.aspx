<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/OnlineFoodMaster.Master" AutoEventWireup="true" CodeBehind="BookTableList.aspx.cs" Inherits="Foodie.Admin.BookTableList" %>

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
        /* GridView Styling */
/* Wrapper box around the table */
.table-box {
    width: 80%;
    margin: 40px auto;
    padding: 20px;
    background: #ffffff;
    border-radius: 12px;
    box-shadow: 0 6px 15px rgba(0,0,0,0.12);
}

/* Title */
.table-title {
    text-align: center;
    font-size: 24px;
    font-weight: bold;
    color: #1f3b61;
    margin-bottom: 20px;
    letter-spacing: 0.5px;
}

/* Table */
.styled-grid {
    width: 100%;
    border-collapse: collapse;
    border-radius: 10px;
    overflow: hidden;
    font-size: 15px;
}

/* Header */
.styled-grid th {
    background: linear-gradient(135deg, #1f3b61, #305a91);
    color: #fff;
    font-weight: 600;
    padding: 14px;
    text-align: center;
    font-size: 15px;
    letter-spacing: 0.5px;
}

/* Table Cells */
.styled-grid td {
    border-bottom: 1px solid #e6e6e6;
    padding: 12px;
    text-align: center;
    color: #2c3e50;
}

/* Alternate row color */
.styled-grid tr:nth-child(even) {
    background-color: #f7faff;
}

/* Row Hover */
.styled-grid tr:hover {
    background-color: #e8f0ff;
    transition: background 0.3s ease;
}

/* Delete Link */
.styled-grid a {
    color: #e74c3c;
    font-weight: 600;
    text-decoration: none;
    padding: 5px 10px;
    border-radius: 6px;
    background: #ffecec;
    transition: 0.3s;
}

.styled-grid a:hover {
    background: #e74c3c;
    color: #fff;
}

/* Responsive (for smaller screens) */
@media (max-width: 768px) {
    .styled-grid, .styled-grid thead, .styled-grid tbody, .styled-grid th, .styled-grid td, .styled-grid tr {
        display: block;
        width: 100%;
    }
    .styled-grid tr {
        margin-bottom: 15px;
        border: 1px solid #ddd;
        border-radius: 8px;
        padding: 10px;
        background: #fff;
        box-shadow: 0 2px 6px rgba(0,0,0,0.05);
    }
    .styled-grid td {
        text-align: right;
        padding-left: 50%;
        position: relative;
    }
    .styled-grid td::before {
        content: attr(data-label);
        position: absolute;
        left: 10px;
        width: 45%;
        font-weight: bold;
        text-align: left;
        color: #1f3b61;
    }
}

 </style>
        
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="table-box">
   <h2 class="table-title">Booked Tables</h2>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" style="margin-left: 272px">    
     <Columns>

            <asp:TemplateField HeaderText="Name">
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Name") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Number">
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("Mobile") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email">
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("Email") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="How Many Person">
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("Persons") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Date">
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("Date") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <%--<asp:TemplateField HeaderText="Edit">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument='<%# Eval("contactId") %>' CommandName="cmd_edt">Edit</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>--%>
            <asp:TemplateField HeaderText="Delete">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument='<%# Eval("contactId") %>' CommandName="cmd_dlt">Delete</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
   
   </div>
</asp:Content>
