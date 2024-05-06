using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;


namespace Signature_Hotel_Management_System.Content.WebForms._0.MasterPage
{
    public partial class MyProfile : System.Web.UI.Page
    {
        SqlConnection conn;

        protected void Page_Load(object sender, EventArgs e)
        {
            AppDomain.CurrentDomain.SetData("DataDirectory", Server.MapPath("~/App_Data"));
            conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["appregdb"].ConnectionString);

            if (!Page.IsPostBack)
            {
                PopulateFields();

                conn.Open();
                SqlCommand cmd = new SqlCommand("Select * from SignUp ", conn);
                SqlDataReader dr;
                dr = cmd.ExecuteReader();
                while (dr.Read())
                {

                    Label1.Text = dr["First Name"].ToString();

                }

                dr.Close();

                conn.Close();
            }
           

        }

        private void PopulateFields()
        {

            string sql;
            sql = "select * from SignUp where Username= ' ' ";

            SqlCommand myCommand = new SqlCommand(sql, conn);
            conn.Open();
            SqlDataReader dr = myCommand.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = (dr["Username"].ToString());
                TextBox2.Text = (dr["First Name"].ToString());
                TextBox3.Text = (dr["PhoneNO"].ToString());
                TextBox4.Text = (dr["Email"].ToString());
                TextBox5.Text = (dr["Country"].ToString());
                TextBox6.Text = (dr["About"].ToString());

            }
            dr.Close();
            conn.Close();
            //end using
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string sql = "update SignUp set First Name='" + TextBox2.Text + "',PhoneNO= " + TextBox3.Text +
             " , Email='" + TextBox4.Text + "',Country='" + TextBox5.Text + "',About=' " + TextBox6.Text + "' where Username='" + TextBox1.Text + "'";
            SqlCommand scmd = new SqlCommand(sql, conn);
            conn.Open();
            scmd.ExecuteNonQuery();
            conn.Close();

            conn.Open();
            SqlCommand cmd = new SqlCommand("Select * from SignUp ", conn);
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {

                Label1.Text = dr["First Name"].ToString();

            }

            dr.Close();
            conn.Close();

            ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "swal('Profile Updated!', '', 'success')", true);


        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/Dashboard.aspx");
        }
    }
}