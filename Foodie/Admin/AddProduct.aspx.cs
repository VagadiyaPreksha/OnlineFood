using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Foodie.Admin
{
    public partial class AddProduct : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        String fnm;
        protected void Page_Load(object sender, EventArgs e)
       
        {
            getcon();
            fillcombo();

        }
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        void fillcombo()
        {
            getcon();
            da = new SqlDataAdapter("select * from add_food", con);
            ds = new DataSet();
            da.Fill(ds);
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                drpdwn.Items.Add(ds.Tables[0].Rows[i][1].ToString());
            }
        }
        void clear()
        {
            textfdnm.Text = "";
            txtpconfig.Text = "";
        }

        void imgupload()
        {
            if (flpimg.HasFile)
            {
                fnm = "..//Prod_images/" + flpimg.FileName;
                flpimg.SaveAs(Server.MapPath(fnm));
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {

           
        }

        protected void drpdwn_SelectedIndexChanged(object sender, EventArgs e)
        {
            getcon();
            da = new SqlDataAdapter("select Id from add_food where Name='" + drpdwn.SelectedItem.Text + "'", con);

            ds = new DataSet();
            da.Fill(ds);
            ViewState["cid"] = ds.Tables[0].Rows[0][0].ToString();
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (Button1.Text == "Add")
            {
                getcon();
                imgupload();
                cmd = new SqlCommand("insert into add_prod(FoodName,Category,Prod_Config,Price,Image) values('" + textfdnm.Text + "' , '" + drpdwn.Text + "' , '" + txtpconfig.Text + "','" + txtprc.Text + "', '" + fnm + "')", con);
                cmd.ExecuteNonQuery();
                clear();

                Response.Redirect(Request.RawUrl);
            }
        }
    }
}