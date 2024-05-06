using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Signature_Hotel_Management_System.Content.WebForms._1.Login
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection conn;

        protected void Page_Load(object sender, EventArgs e)
        {

            AppDomain.CurrentDomain.SetData("DataDirectory", Server.MapPath("~/App_Data"));
            conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["appregdb"].ConnectionString);

            string username = TextBox1.Text;
            string password = TextBox2.Text;

            conn.Open();
            string sql;
            sql = "select * from UserProfile where Username='"
                  + username + "' and Password= '"
                  + password + "'";
            SqlCommand scmd = new SqlCommand(sql, conn);
            SqlDataReader sdr = scmd.ExecuteReader();
            if (sdr.Read())
            {
                
                Response.Redirect("~/Content/WebForms/3.Dashboard/Dashboard.aspx");
            }
            else
            {
                Label2.Text = "Entered Username/Password is incorrect";

            }
            conn.Close();
                


        }

      
    }
}