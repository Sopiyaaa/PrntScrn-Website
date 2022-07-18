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
    public partial class sticker_page : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=prntscrn_DB;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = (string)Session["email_address"];           
        }

        protected void btn_submit_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                if (FileUpload6.HasFile)
                {
                    string str = FileUpload6.FileName;
                    FileUpload6.PostedFile.SaveAs(Server.MapPath("~/uploads/" + str));
                    string Image = "uploads/" + str.ToString();

                    /*SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=prntscrn_DB;Integrated Security=True");*/
                    SqlCommand cmd = new SqlCommand("INSERT INTO tbl_sticker (category,file_upload,paper_type,color,paper_size,quantity,suggestions,payment,customer_name,address,status) values(@category,@file_upload,@paper_type,@color,@paper_size,@quantity,@suggestions,@payment,@customer_name,@address,@status)", con);
                    //cmd.Parameters.AddWithValue("@order_id", Convert.ToInt32(HiddenField1.Value == "" ? "0" : HiddenField1.Value));
                    cmd.Parameters.AddWithValue("@category", "Stickers");
                    cmd.Parameters.AddWithValue("file_upload", Image);
                    cmd.Parameters.AddWithValue("@paper_type", DropDownList25.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@color", DropDownList26.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@paper_size", DropDownList27.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@quantity", quantity6.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@suggestions", TextBox6.Text.Trim());
                    cmd.Parameters.AddWithValue("@payment", paymentlist6.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@customer_name", Session["first_name"] + " " + Session["last_name"]);
                    cmd.Parameters.AddWithValue("@address", Session["address"]);
                    cmd.Parameters.AddWithValue("@status", "Pending");

                    cmd.ExecuteNonQuery();
                    con.Close();
                    Response.Write("<script>alert('Ordered succesfully');</script>");
                }
                else
                {
                    Response.Write("<script>alert('Please insert image.');</script>");
                }
            }

            catch (SqlException ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}