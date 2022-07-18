using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace idpicture_page
{
    public partial class purchase_id : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=prntscrn_DB;Integrated Security=True");
        
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = (string)Session["email_address"];


            try
            {
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                //string myquery = "select category, package, paper_type, attire, background_color, payment from tbl_id where customer_name ='" + Session["first_name"] + " " + Session["last_name"] + "'";
                //string myquery = "SELECT * FROM tbl_id where customer_name ='" + Session["first_name"] + " " + Session["last_name"] + "'";
                string myquery = "SELECT category, payment, status FROM tbl_id where customer_name ='" + Session["first_name"] + " " + Session["last_name"] + "'";
                cmd.CommandText = myquery;
                cmd.ExecuteNonQuery();
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();

                SqlCommand cmd2 = con.CreateCommand();
                cmd2.CommandType = CommandType.Text;
                string myquery2 = "SELECT category, payment, status FROM tbl_flyer where customer_name ='" + Session["first_name"] + " " + Session["last_name"] + "'";
                cmd2.CommandText = myquery2;
                cmd2.ExecuteNonQuery();
                DataTable dt2 = new DataTable();
                SqlDataAdapter da2 = new SqlDataAdapter(cmd2);
                da2.Fill(dt2);
                GridView2.DataSource = dt2;
                GridView2.DataBind();

                SqlCommand cmd3 = con.CreateCommand();
                cmd3.CommandType = CommandType.Text;
                string myquery3 = "SELECT category, payment, status FROM tbl_invitation where customer_name ='" + Session["first_name"] + " " + Session["last_name"] + "'";
                cmd3.CommandText = myquery3;
                cmd3.ExecuteNonQuery();
                DataTable dt3 = new DataTable();
                SqlDataAdapter da3 = new SqlDataAdapter(cmd3);
                da3.Fill(dt3);
                GridView3.DataSource = dt3;
                GridView3.DataBind();

                SqlCommand cmd4 = con.CreateCommand();
                cmd4.CommandType = CommandType.Text;
                string myquery4 = "SELECT category, payment, status FROM tbl_print where customer_name ='" + Session["first_name"] + " " + Session["last_name"] + "'";
                cmd4.CommandText = myquery4;
                cmd4.ExecuteNonQuery();
                DataTable dt4 = new DataTable();
                SqlDataAdapter da4 = new SqlDataAdapter(cmd4);
                da4.Fill(dt4);
                GridView4.DataSource = dt4;
                GridView4.DataBind();

                SqlCommand cmd5 = con.CreateCommand();
                cmd5.CommandType = CommandType.Text;
                string myquery5 = "SELECT category, payment, status FROM tbl_postcard where customer_name ='" + Session["first_name"] + " " + Session["last_name"] + "'";
                cmd5.CommandText = myquery5;
                cmd5.ExecuteNonQuery();
                DataTable dt5 = new DataTable();
                SqlDataAdapter da5 = new SqlDataAdapter(cmd5);
                da5.Fill(dt5);
                GridView5.DataSource = dt5;
                GridView5.DataBind();

                SqlCommand cmd6 = con.CreateCommand();
                cmd6.CommandType = CommandType.Text;
                string myquery6 = "SELECT category, payment, status FROM tbl_sticker where customer_name ='" + Session["first_name"] + " " + Session["last_name"] + "'";
                cmd6.CommandText = myquery6;
                cmd6.ExecuteNonQuery();
                DataTable dt6 = new DataTable();
                SqlDataAdapter da6 = new SqlDataAdapter(cmd6);
                da6.Fill(dt6);
                GridView6.DataSource = dt6;
                GridView6.DataBind();
                con.Close();
            }
            catch(SqlException ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
           
        }
    }
}