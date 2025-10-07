using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Foodie.User
{
    public partial class Contact : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString; // Connection String
        SqlConnection con;  // Connection object
        SqlDataAdapter da; // Container object
        DataSet ds; // Run Time Container
        SqlCommand cmd; // Insert, Update, Delete

        String fnm;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
        }

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }
        void clear()
        {
            txtnm.Text = " ";
            ddlpersons.Text = " ";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (btncontact.Text == "Book Now")
            {
                getcon();

                cmd = new SqlCommand("insert into Contact(Name,Mobile,Email,Persons,Date,) Values('" + txtnm.Text + "','" + txtnum.Text + "','" + txteml.Text + "','" + ddlpersons.Text + "','" + txtdate.Text + "')", con);
                cmd.ExecuteNonQuery();
                clear();
            }

        }
    }
}