﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.IO;

namespace idpicture_page
{
    public partial class id_admin : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=prntscrn_DB;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GVbind();
            }
        }

        protected void GVbind()
        {
            using (SqlConnection con = new SqlConnection(strcon))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from tbl_id", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows == true)
                {
                    GridView1.DataSource = dr;
                    GridView1.DataBind();
                }
            }
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GVbind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            string status = ((TextBox)GridView1.Rows[e.RowIndex].Cells[12].Controls[0]).Text;
            using(SqlConnection con = new SqlConnection(strcon))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("update tbl_id set status ='" + status +"' where order_id='"+ id + "'", con);
                int t = cmd.ExecuteNonQuery();
                if(t > 0)
                {
                    Response.Write("<script>alert('Data has been updated')</script>");
                    GridView1.EditIndex = - 1;
                    GVbind();
                }
            }
        }
    }
}