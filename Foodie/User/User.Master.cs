using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Foodie.User
{
    public partial class User : System.Web.UI.MasterPage
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            //if(!Request.Url.AbsoluteUri.ToString().Contains("Default.aspx"))
            //{
            //    form1.Attributes.Add("class", "sub_page");
            //}
            //else
            //{
            //    form1.Attributes.Remove("class");
            //    Control sliderUserCntrol = (Control)Page.LoadControl("SliderUserCntrol.ascx");

            //    //pnlSliderUC .Cntrols.Add(sliderUserCntrol);
            //}
            //if (Session["userId"]!=null)
            //{
            //    //lbLoginOrLogout.Text = "Logout";
            //}
            //else
            //{

            //}


            if (Session["admin"] != null)
            {
               
                lbLoginorLogout.Text = "Logout";
            }
            else
            {
                
                lbLoginorLogout.Text = "Login";
            }
        }

        protected void lbLoginOrLogout_Click(object sender, EventArgs e)
        {
            //if (Session["userId"] == null)
            //{
            //    Response.Redirect("Login.aspx");
            
            //}
            //else
            //{
            //    Session.Abandon();
            //    Response.Redirect("Login.aspx");
            //}
        }

        protected void lbLoginorLogout_Click1(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                Session.Abandon();
                Response.Redirect("Logout.aspx");
            }
        }
    }
}