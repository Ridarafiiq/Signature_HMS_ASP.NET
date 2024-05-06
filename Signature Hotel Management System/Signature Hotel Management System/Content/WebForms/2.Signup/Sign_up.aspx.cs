using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Signature_HMS.signup
{
    public partial class Sign_up : System.Web.UI.Page
    {
        SqlConnection conn;

        protected void Page_Load(object sender, EventArgs e)
        {

            AppDomain.CurrentDomain.SetData("DataDirectory", Server.MapPath("~/App_Data"));
            conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["appregdb"].ConnectionString);

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }




        protected void Button1_Click1(object sender, EventArgs e)
        {
            string fname = TextBox1.Text;
            string lname = TextBox2.Text;
            string username = TextBox3.Text;
            string email = TextBox4.Text;
            string password = TextBox5.Text;

            string sql;
            sql = "insert into UserProfile(FirstName, LastName, Username, Email, Password) values ('"
                  + fname + "' ,'"
                  + lname + "' ,'"
                  + username + "', '"
                  + email + "', '"
                  + password + "')";
            SqlCommand scmd = new SqlCommand(sql, conn);
            conn.Open();
            scmd.ExecuteNonQuery();

            //Response.Write("Record Inserted");
            conn.Close();

            Response.Redirect("~/Content/WebForms/1.Login/Login.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Content/WebForms/1.Login/Login.aspx");
        }

    }
}