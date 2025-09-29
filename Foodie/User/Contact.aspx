<%@ Page Title="" Language="C#" MasterPageFile="~/User/User.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Foodie.User.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   <%-- <section class="book_section layout_padding">
     <div class="container">
         <div class="heading_container">
             <h2>Book A Table
             </h2>
         </div>
         <div class="row">
             <div class="col-md-6">
                 <div class="form_container">
                     <form action="">
                         <div>
                             <%--     <input type="text" class="form-control" placeholder="Your Name" />--%>
                             <%--<asp:TextBox ID="Texbox1" placeholder="Your Name" runat="server"></asp:TextBox>
                         </div>
                         <div>
                             <%-- <input type="text" class="form-control" placeholder="Phone Number" />--%>
                             <%--<asp:TextBox ID="TextBox4" placeholder="Phone Number" runat="server"></asp:TextBox>
                         </div>
                         <div>
                             <%-- <input type="email" class="form-control" placeholder="Your Email" />--%>
                             <%--<asp:TextBox ID="TextBox5" placeholder="Your Email" runat="server"></asp:TextBox>
                         </div>
                         <div>--%>
                             <%--<select class="form-control nice-select wide">
                                 <option value="" disabled selected>How many persons?
                                 </option>
                                 <option value="">2
                                 </option>
                                 
                                 <option value="">3
                                 </option>
                                 <option value="">4
                                 </option>
                                 <option value="">5
                                 </option>
                             </select>--%>
                             <%--<asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">
                                 <asp:ListItem>How many persons?</asp:ListItem>
                                 <asp:ListItem>1</asp:ListItem>
                                 <asp:ListItem>2</asp:ListItem>
                                 <asp:ListItem>3</asp:ListItem>
                                 <asp:ListItem>4</asp:ListItem>
                             </asp:DropDownList>
                         </div>
                         <div>
                            <%-- <input type="date" class="form-control">--%>
                             
                        <%-- </div>
                         <div class="btn_box">--%>
                             <%--<button>
                                 Book Now
                             </button>--%>
                             <%--<asp:Button ID="Button2" runat="server" Text="Button" />
                         </div>
                     </form>
                 </div>
             </div>
             <div class="col-md-6">
                 <div class="map_container ">
                     <div id="googleMap"></div>
                 </div>
             </div>
         </div>
     </div>
 </section>  --%>

   <!-- CSS Styling -->
<style>
    .book_section {
        padding: 60px 0;
        background-color: #f8f9fa;
    }

    .heading_container h2 {
        font-size: 32px;
        font-weight: 600;
        margin-bottom: 30px;
        text-align: center;
    }

    .form_container {
        background-color: #ffffff;
        padding: 25px 30px;
        border-radius: 10px;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
    }

    .form_container div {
        margin-bottom: 15px;
    }

    .form-control {
        width: 100%;
        padding: 10px 14px;
        font-size: 16px;
        border: 1px solid #ccc;
        border-radius: 5px;
        outline: none;
        box-sizing: border-box;
        transition: border-color 0.3s, box-shadow 0.3s;
    }

    .form-control:focus {
        border-color: #007bff;
        box-shadow: 0 0 5px rgba(0, 123, 255, 0.3);
    }

    .btn_box {
        text-align: center;
        margin-top: 10px;
    }

    .btn {
        background-color: #007bff;
        color: white;
        padding: 10px 25px;
        font-size: 16px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    .btn:hover {
        background-color: #0056b3;
    }

    .map_container {
        width: 100%;
        height: 100%;
        min-height: 300px;
        border-radius: 10px;
        overflow: hidden;
        box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
    }

    #googleMap {
        width: 100%;
        height: 100%;
        min-height: 300px;
    }

    @media (max-width: 767px) {
        .book_section {
            padding: 40px 15px;
        }

        .form_container {
            padding: 20px;
        }

        .heading_container h2 {
            font-size: 26px;
        }
    }
</style>

<!-- ASP.NET + HTML Code -->
<section class="book_section layout_padding">
    <div class="container">
        <div class="heading_container">
            <h2>Book A Table</h2>
        </div>
        <div class="row">
            <div class="col-md-6">
                <div class="form_container">
                    <form action="">
                        <div>
                            <asp:TextBox ID="txtnm" CssClass="form-control" placeholder="Your Name" runat="server"></asp:TextBox>
                        </div>
                        <div>
                            <asp:TextBox ID="txtnum" CssClass="form-control" placeholder="Phone Number" runat="server"></asp:TextBox>
                        </div>
                        <div>
                            <asp:TextBox ID="txteml" CssClass="form-control" placeholder="Your Email" runat="server"></asp:TextBox>
                        </div>
                        <div>
                            <asp:DropDownList ID="ddlpersons" CssClass="form-control" runat="server" AutoPostBack="True">
                                <asp:ListItem>How many persons?</asp:ListItem>
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>5</asp:ListItem>
                                <asp:ListItem>10</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div>
                            <asp:TextBox ID="txtdate" CssClass="form-control" TextMode="Date" runat="server"></asp:TextBox>
                        </div>
                        <div class="btn_box">
                            <asp:Button ID="btncontact" CssClass="btn" runat="server" Text="Book Now" OnClick="Button1_Click" />
                        </div>
                    </form>
                </div>
            </div>
            <div class="col-md-6">
                <div class="map_container">
                    <div id="googleMap"></div>
                </div>
            </div>
        </div>
    </div>
</section>

    </div>
</asp:Content>
