using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Security.Cryptography;

namespace Foodie.Admin
{
    public partial class AdminRegister : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        

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
            txtunm.Text = " ";
            txtpass.Text = " ";
        }

        protected void btnregister_Click(object sender, EventArgs e)
        {

            if (btnregister.Text == "Register")
            {
                getcon();

                cmd = new SqlCommand("insert into AdminRegister_tbl(UserName,Password,Gender,Email) Values ('" + txtunm.Text + "','" + txtpass.Text + "','" + rdbgrn.Text + "','" + txteml.Text + "')", con);
                cmd.ExecuteNonQuery();
                clear();

                Response.Redirect(Request.RawUrl);

            }
        }
           
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
        }
    }
}