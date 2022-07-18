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
    public partial class id_page : System.Web.UI.Page
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

                if (FileUpload2.HasFile)
                {
                    string str = FileUpload2.FileName;
                    FileUpload2.PostedFile.SaveAs(Server.MapPath("~/uploads/" + str));
                    string Image = "uploads/" + str.ToString();

                    SqlCommand cmd = new SqlCommand("INSERT INTO tbl_id (category,file_upload,package,paper_type,attire,background_color,suggestions,payment,customer_name,address,email_address,status) values(@category,@file_upload,@package,@paper_type,@attire,@background_color,@suggestions,@payment,@customer_name,@address,@email_address,@status)", con);
                    cmd.Parameters.AddWithValue("@category", "ID Picture");
                    cmd.Parameters.AddWithValue("file_upload", Image);
                    cmd.Parameters.AddWithValue("@package", DropDownList1.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@paper_type", DropDownList2.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@attire", DropDownList4.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@background_color", DropDownList3.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@suggestions", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@payment", paymentlist.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@customer_name", Session["first_name"] + " " + Session["last_name"]);
                    cmd.Parameters.AddWithValue("@address", Session["address"]);
                    cmd.Parameters.AddWithValue("@email_address", Session["email_address"]);
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
            /*try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                if (FileUpload2.HasFile)
                {
                    string str = FileUpload2.FileName;
                    FileUpload2.PostedFile.SaveAs(Server.MapPath("~/uploads/" + str));
                    string Image = "uploads/" + str.ToString();

                    SqlCommand cmd = new SqlCommand("INSERT INTO tbl_id (category,file_upload,package,paper_type,attire,background_color,suggestions,payment,customer_name,address,emailadd,status) values(@category,@file_upload,@package,@paper_type,@attire,@background_color,@suggestions,@payment,@customer_name,@address,@emailadd,@status)", con);
                    cmd.Parameters.AddWithValue("@category", "ID Picture");
                    cmd.Parameters.AddWithValue("file_upload", Image);
                    cmd.Parameters.AddWithValue("@package", DropDownList1.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@paper_type", DropDownList2.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@attire", DropDownList4.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@background_color", DropDownList3.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@suggestions", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@payment", paymentlist.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@customer_name", Session["first_name"] + " " + Session["last_name"]);
                    cmd.Parameters.AddWithValue("@address", Session["address"]);
                    cmd.Parameters.AddWithValue("@emailadd", Session["email_address"]);
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

            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }*/
        }
    }
}
