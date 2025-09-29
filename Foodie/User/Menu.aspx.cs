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
    public partial class Menu : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        String fnm;

        PagedDataSource pg;
        int row = 3, p;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            //fillcombo();
            filllist();

        }
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {
            //if(e.CommandName =="cmd_view")
            //{
            //    int id =Convert.ToInt16(e.CommandArgument);
            //    Response.Redirect("ViewDetail.aspx?id="+id);
            //}
        }

        void filllist()
        {
            getcon();
            da = new SqlDataAdapter("select * from add_prod", con);
            ds = new DataSet();
            da.Fill(ds);

            row = ds.Tables[0].Rows.Count;
            pg = new PagedDataSource();

            //pg.AllowPaging = true;
            //pg.PageSize = 3;
            //pg.CurrentPageIndex = Convert.ToInt32(ViewState["pid"]);

            pg.DataSource = ds.Tables[0].DefaultView;
            DataList1.DataSource = pg;
            DataList1.DataBind();

        }
    }
}