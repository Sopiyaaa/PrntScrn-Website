using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace idpicture_page
{
    public partial class Registration : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btn_create_Click(object sender, EventArgs e)
        {
            if (checkMemberExists())
            {
                Response.Write("<script>alert('Email Address is already taken.');</script>");
            }
            else
            {
                signUpNewMember();
            }

            if (password.Text != passwordd.Text)
            {
                match_mess.Text = "Password does not match";
                btn_create.Enabled = false;
            }
                
            else
            {
                btn_create.Enabled = true;
            }
        }

        bool checkMemberExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from tbl_users WHERE email_address='"+emailadd.Text.Trim()+"';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }

                con.Close();
                Response.Write("<script>alert('Registered succesfully');</script>");
                Clear();
            }

            catch (Exception)
            {
                Response.Write("<script>alert('Registration failed');</script>");
            }
            return false;
        }

        void signUpNewMember()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO tbl_users (first_name,last_name,mobile_number,email_address,address,password,confirm_password) values(@first_name,@last_name,@mobile_number,@email_address,@address,@password,@confirm_password)", con);

                cmd.Parameters.AddWithValue("@first_name", fname.Text.Trim());
                cmd.Parameters.AddWithValue("@last_name", lname.Text.Trim());
                cmd.Parameters.AddWithValue("@mobile_number", mobilenum.Text.Trim());
                cmd.Parameters.AddWithValue("@email_address", emailadd.Text.Trim());
                cmd.Parameters.AddWithValue("@address", addressfield.Text.Trim());
                cmd.Parameters.AddWithValue("@password", password.Text.Trim());
                cmd.Parameters.AddWithValue("@confirm_password", passwordd.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Registered succesfully');</script>");
                Clear();
            }

            catch (Exception)
            {
                Response.Write("<script>alert('Registration failed.');</script>");
            }
        }

        void Clear()
        {
            fname.Text = ""; lname.Text = ""; mobilenum.Text = ""; emailadd.Text = ""; addressfield.Text = ""; password.Text = ""; passwordd.Text = "";
        }
    }
}