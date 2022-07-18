using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.IO;

namespace idpicture_page.Webpages
{
    public partial class admin : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=prntscrn_DB;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("adminlogin_page.aspx");
            }

            try
            {
                con.Open();
                //TOTAL ORDERS
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                SqlCommand cmd2 = con.CreateCommand();
                cmd2.CommandType = CommandType.Text;
                SqlCommand cmd3 = con.CreateCommand();
                cmd3.CommandType = CommandType.Text;
                SqlCommand cmd4 = con.CreateCommand();
                cmd4.CommandType = CommandType.Text;
                SqlCommand cmd5 = con.CreateCommand();
                cmd5.CommandType = CommandType.Text;
                SqlCommand cmd6 = con.CreateCommand();
                cmd6.CommandType = CommandType.Text;

                string myquery = "SELECT count(order_id) FROM tbl_id";
                string myquery2 = "SELECT count(order_id) FROM tbl_flyer";
                string myquery3 = "SELECT count(order_id) FROM tbl_invitation";
                string myquery4 = "SELECT count(order_id) FROM tbl_postcard";
                string myquery5 = "SELECT count(order_id) FROM tbl_print";
                string myquery6 = "SELECT count(order_id) FROM tbl_sticker";
                cmd.CommandText = myquery;
                cmd2.CommandText = myquery2;
                cmd3.CommandText = myquery3;
                cmd4.CommandText = myquery4;
                cmd5.CommandText = myquery5;
                cmd6.CommandText = myquery6;
               
                int t1 = Convert.ToInt32 (cmd.ExecuteScalar());
                int t2 = Convert.ToInt32(cmd2.ExecuteScalar());
                int t3 = Convert.ToInt32(cmd3.ExecuteScalar());
                int t4 = Convert.ToInt32(cmd4.ExecuteScalar());
                int t5 = Convert.ToInt32(cmd5.ExecuteScalar());
                int t6 = Convert.ToInt32(cmd6.ExecuteScalar());
                int haha = t1 + t2 + t3 +t4 +t5 + t6;
                total_order.Text = haha.ToString();

                //TOTAL PENDING
                SqlCommand pmd = con.CreateCommand();
                pmd.CommandType = CommandType.Text;
                SqlCommand pmd2 = con.CreateCommand();
                pmd2.CommandType = CommandType.Text;
                SqlCommand pmd3 = con.CreateCommand();
                pmd3.CommandType = CommandType.Text;
                SqlCommand pmd4 = con.CreateCommand();
                pmd4.CommandType = CommandType.Text;
                SqlCommand pmd5 = con.CreateCommand();
                pmd5.CommandType = CommandType.Text;
                SqlCommand pmd6 = con.CreateCommand();
                pmd6.CommandType = CommandType.Text;

                string pquery = "SELECT count(status) FROM tbl_id WHERE status = 'Pending'";
                string pquery2 = "SELECT count(status) FROM tbl_flyer WHERE status = 'Pending'";
                string pquery3 = "SELECT count(status) FROM tbl_invitation WHERE status = 'Pending'";
                string pquery4 = "SELECT count(status) FROM tbl_postcard WHERE status = 'Pending'";
                string pquery5 = "SELECT count(status) FROM tbl_print WHERE status = 'Pending'";
                string pquery6 = "SELECT count(status) FROM tbl_sticker WHERE status = 'Pending'";
                pmd.CommandText = pquery;
                pmd2.CommandText = pquery2;
                pmd3.CommandText = pquery3;
                pmd4.CommandText = pquery4;
                pmd5.CommandText = pquery5;
                pmd6.CommandText = pquery6;

                int p1 = Convert.ToInt32(pmd.ExecuteScalar());
                int p2 = Convert.ToInt32(pmd2.ExecuteScalar());
                int p3 = Convert.ToInt32(pmd3.ExecuteScalar());
                int p4 = Convert.ToInt32(pmd4.ExecuteScalar());
                int p5 = Convert.ToInt32(pmd5.ExecuteScalar());
                int p6 = Convert.ToInt32(pmd6.ExecuteScalar());
                int hehe = p1 + p2 + p3 + p4 + p5 + p6;
                total_pending.Text = hehe.ToString();

                //TOTAL CASH ON DELIVERY
                SqlCommand dmd = con.CreateCommand();
                dmd.CommandType = CommandType.Text;
                SqlCommand dmd2 = con.CreateCommand();
                dmd2.CommandType = CommandType.Text;
                SqlCommand dmd3 = con.CreateCommand();
                dmd3.CommandType = CommandType.Text;
                SqlCommand dmd4 = con.CreateCommand();
                dmd4.CommandType = CommandType.Text;
                SqlCommand dmd5 = con.CreateCommand();
                dmd5.CommandType = CommandType.Text;
                SqlCommand dmd6 = con.CreateCommand();
                dmd6.CommandType = CommandType.Text;

                string dquery = "SELECT count(payment) FROM tbl_id WHERE payment = 'Cash on Delivery'";
                string dquery2 = "SELECT count(payment) FROM tbl_flyer WHERE payment = 'Cash on Delivery'";
                string dquery3 = "SELECT count(payment) FROM tbl_invitation WHERE payment = 'Cash on Delivery'";
                string dquery4 = "SELECT count(payment) FROM tbl_postcard WHERE payment = 'Cash on Delivery'";
                string dquery5 = "SELECT count(payment) FROM tbl_print WHERE payment = 'Cash on Delivery'";
                string dquery6 = "SELECT count(payment) FROM tbl_sticker WHERE payment = 'Cash on Delivery'";
                dmd.CommandText = dquery;
                dmd2.CommandText = dquery2;
                dmd3.CommandText = dquery3;
                dmd4.CommandText = dquery4;
                dmd5.CommandText = dquery5;
                dmd6.CommandText = dquery6;

                int d1 = Convert.ToInt32(dmd.ExecuteScalar());
                int d2 = Convert.ToInt32(dmd2.ExecuteScalar());
                int d3 = Convert.ToInt32(dmd3.ExecuteScalar());
                int d4 = Convert.ToInt32(dmd4.ExecuteScalar());
                int d5 = Convert.ToInt32(dmd5.ExecuteScalar());
                int d6 = Convert.ToInt32(dmd6.ExecuteScalar());
                int hihi = d1 + d2 + d3 + d4 + d5 + d6;
                total_cod.Text = hihi.ToString();

                //PICK-UP
                SqlCommand qmd = con.CreateCommand();
                qmd.CommandType = CommandType.Text;
                SqlCommand qmd2 = con.CreateCommand();
                qmd2.CommandType = CommandType.Text;
                SqlCommand qmd3 = con.CreateCommand();
                qmd3.CommandType = CommandType.Text;
                SqlCommand qmd4 = con.CreateCommand();
                qmd4.CommandType = CommandType.Text;
                SqlCommand qmd5 = con.CreateCommand();
                qmd5.CommandType = CommandType.Text;
                SqlCommand qmd6 = con.CreateCommand();
                qmd6.CommandType = CommandType.Text;

                string qquery = "SELECT count(payment) FROM tbl_id WHERE payment = 'Pick up'";
                string qquery2 = "SELECT count(payment) FROM tbl_flyer WHERE payment = 'Pick up'";
                string qquery3 = "SELECT count(payment) FROM tbl_invitation WHERE payment = 'Pick up'";
                string qquery4 = "SELECT count(payment) FROM tbl_postcard WHERE payment = 'Pick upy'";
                string qquery5 = "SELECT count(payment) FROM tbl_print WHERE payment = 'Pick up'";
                string qquery6 = "SELECT count(payment) FROM tbl_sticker WHERE payment = 'Pick up'";
                qmd.CommandText = qquery;
                qmd2.CommandText = qquery2;
                qmd3.CommandText = qquery3;
                qmd4.CommandText = qquery4;
                qmd5.CommandText = qquery5;
                qmd6.CommandText = qquery6;

                int q1 = Convert.ToInt32(qmd.ExecuteScalar());
                int q2 = Convert.ToInt32(qmd2.ExecuteScalar());
                int q3 = Convert.ToInt32(qmd3.ExecuteScalar());
                int q4 = Convert.ToInt32(qmd4.ExecuteScalar());
                int q5 = Convert.ToInt32(qmd5.ExecuteScalar());
                int q6 = Convert.ToInt32(qmd6.ExecuteScalar());
                int hoho = q1 + q2 + q3 + q4 + q5 + q6;
                total_pickup.Text = hoho.ToString();
                con.Close();
            }
            catch (SqlException ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}