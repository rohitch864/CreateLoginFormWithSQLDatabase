using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;



namespace LOGIN_FORM_ASP
{
    public partial class LOGIN : System.Web.UI.Page
    {

        string cs = ConfigurationManager.ConnectionStrings["dbcs2"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {

            SqlConnection con = new SqlConnection(cs);
            //string query = "SELECT * FROM  LOGIN WHERE username=@username AND password=@password";
            string query = "SELECT * FROM  signup WHERE username=@username AND password=@password";
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@username", UserTextBox.Text);
            cmd.Parameters.AddWithValue("@password", PassTextBox.Text);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                Session["username"] = UserTextBox.Text;
                Session["password"] = PassTextBox.Text;
                //Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Login Successful !!')</script>");
                Response.Redirect("DASHBOARD.aspx");
            }
            else {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Login Failed !!')</script>");
            }
            con.Close();
        }



    }
}