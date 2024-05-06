using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Signature_Hotel_Management_System.Content.WebForms.A._Bookings
{
    public partial class Add_Booking : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            AppDomain.CurrentDomain.SetData("DataDirectory", Server.MapPath("~/App_Data"));
            conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["signaturedb"].ConnectionString);
         
           
           TextBox5.Text = DateTime.Now.ToString();
           

            if (!Page.IsPostBack)
            {


            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sql;
            sql = "insert into Bookings values ("
                  + TextBox1.Text + ", '" + TextBox2.Text + "' ," +
                  TextBox3.Text + ", " + TextBox4.Text + ",'" + DropDownList1.SelectedValue + "', '" + DropDownList2.SelectedValue +
                  "','" + DropDownList3.SelectedValue + "',' " + DateTime.Parse(TextBox5.Text) + "',' " + DateTime.Parse(TextBox6.Text) + "','" + RadioButtonList1.SelectedValue + "')";
            SqlCommand scmd = new SqlCommand(sql, conn);
            conn.Open();
            scmd.ExecuteNonQuery();
            ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "swal('Sucessfully Submitted!', '', 'success')", true);
            conn.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewBookings.aspx", true);
        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {
            TextBox5.Text = DateTime.Now.ToString("yyyy-MM-dd"); 
        }
    }
}