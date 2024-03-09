using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LOGIN_FORM_ASP
{
    public partial class DASHBOARD : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["username"] != null)
            {
                Response.Write("Welcome to My Site " + Session["username"].ToString());

            }
            else {

                Response.Redirect("LOGIN.aspx");
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                Session["username"] = null;
                Response.Redirect("LOGIN.aspx");
            
            }
        }
    }
}