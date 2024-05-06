using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Signature_Hotel_Management_System.Content.WebForms._6.Staff.B._View_Staff
{
    public partial class View_Staff : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            AppDomain.CurrentDomain.SetData("DataDirectory", Server.MapPath("~/App_Data"));
            conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["staffdatad"].ConnectionString);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string query = "select * from Staff where ID like '" + TextBox1.Text + "%'";
            SqlDataAdapter da = new SqlDataAdapter(query, conn);
            conn.Open();
            DataTable dt = new DataTable();
            da.Fill(dt);

            if (dt.Rows.Count == 0)
            {
                GridView2.Visible = false;
                Label11.Visible = true;
                Label11.Text = "The searched ID " + TextBox1.Text + " is not available in the Records.";

            }
            else
            {
                GridView2.Visible = true;
                Label11.Visible = true;
                Label11.Text = "Searched ID: ";
                GridView2.DataSource = dt;
                GridView2.DataBind();
            }
        }
    }
}