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
    public partial class Login : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        string fnm;
        int i;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
        }
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            if (txtunm.Text != null && txtpass != null)
            {


                getcon();
                cmd = new SqlCommand("select count(*) from Register_tbl where  UserName= '" + txtunm.Text + "' and Password='" + txtpass.Text + "'", con);
                i = Convert.ToInt32(cmd.ExecuteScalar());

                if (i > 0)
                {
                    Session["admin"] = txtunm.Text;
                    Response.Redirect("Index.aspx");
                }
                else
                {
                    Response.Write("<script> alrt('Invalid User')</script>");
                }


            }

        }
    }
}