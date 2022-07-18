using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace idpicture_page
{
    public partial class content_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["email_address"] == null)
            {
                Response.Redirect("LogIn_page.aspx");
            }

            Response.Write("Welcome, "+Session["first_name"]+"!");
        }

        protected void btn_id_Click(object sender, EventArgs e)
        {
            Session["email_address"] = LinkButton1.Text;
            Response.Redirect("id_page.aspx");
        }

        protected void btn_print_Click2(object sender, EventArgs e)
        {
            Session["email_address"] = LinkButton2.Text;
            Response.Redirect("print_page.aspx");
        }

        protected void btn_postc_Click3(object sender, EventArgs e)
        {
            Session["email_address"] = LinkButton3.Text;
            Response.Redirect("postcard_page.aspx");
        }

        protected void btn_flyer_Click4(object sender, EventArgs e)
        {
            Session["email_address"] = LinkButton4.Text;
            Response.Redirect("flyer_page.aspx");
        }

        protected void btn_inv_Click5(object sender, EventArgs e)
        {
            Session["email_address"] = LinkButton5.Text;
            Response.Redirect("invitation_page.aspx");
        }

        protected void btn_sticker_Click6(object sender, EventArgs e)
        {
            Session["email_address"] = LinkButton6.Text;
            Response.Redirect("sticker_page.aspx");
        }

        protected void btn_purchase(object sender, EventArgs e)
        {
            Session["email_address"] = LinkButton6.Text;
            Response.Redirect("purchase_page.aspx");
        }
    }
}