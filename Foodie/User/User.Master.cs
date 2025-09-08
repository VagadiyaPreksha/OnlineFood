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
        }

        protected void lbLoginOrLogout_Click(object sender, EventArgs e)
        {
            if (Session["userId"] == null)
            {
                Response.Redirect("Login.aspx");
            
            }
            else
            {
                Session.Abandon();
                Response.Redirect("Login.aspx");
            }
        }
    }
}