using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Net.NetworkInformation;
using System.Text.RegularExpressions;
using System.Drawing;


namespace Foodie.User
{
    public partial class Registration : System.Web.UI.Page
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
            imgupload();
        }
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }
        void clear()
        {
            txtnm.Text = " ";
            txtpass.Text = " ";
        }
        void imgupload()
        {
            if (flpimg.HasFile)
            {
                fnm = "images/" + flpimg.FileName;
                flpimg.SaveAs(Server.MapPath(fnm));
            }
        }
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            
        }

        protected void btnRegister_Click1(object sender, EventArgs e)
        {
            
        }

        protected void btnRegister_Click2(object sender, EventArgs e)
        {
            
        }

        protected void btnregister_Click3(object sender, EventArgs e)
        {
            imgupload();
            if (btnregister.Text == "Register")
            {
                getcon();

                cmd = new SqlCommand("insert into Register_tbl(UserName,Password,Name,Image,Gender,Email) Values ('" + txtunm.Text + "','" + txtpass.Text + "','" + txtnm.Text + "','" + fnm + "','" + rdbgrn.Text + "','" + txteml.Text + "')", con); 
                cmd.ExecuteNonQuery();
                clear();
            }
        }
    }
}

