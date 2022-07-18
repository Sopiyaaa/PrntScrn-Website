using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace idpicture_page.Webpages
{
    public partial class LogIn : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
          
        }
        protected void btn_login_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from tbl_users WHERE email_address='" +email.Text.Trim()+"' AND password='"+ pass.Text.Trim() +"';", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if(dr.HasRows)
                {
                    while(dr.Read())
                    {
                        Response.Write("<script>alert('Welcome, "+dr.GetValue(0).ToString()+"!');</script>");
                        Session["email_address"] = dr["email_address"].ToString();
                        Session["first_name"] = dr["first_name"].ToString();
                        Session["last_name"] = dr["last_name"].ToString();
                        Session["address"] = dr["address"].ToString();
                        Response.Redirect("content_page.aspx");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Invalid credentials');</script>");
                }
            }
            catch (Exception)
            {

            }
        }
    }
}