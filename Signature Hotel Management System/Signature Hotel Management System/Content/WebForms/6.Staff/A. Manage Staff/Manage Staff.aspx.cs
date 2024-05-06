using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace Signature_Hotel_Management_System.Content.WebForms._6.Staff.A._Manage_Staff
{
    public partial class Manage_Staff : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            AppDomain.CurrentDomain.SetData("DataDirectory", Server.MapPath("~/App_Data"));
            conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["staffdatad"].ConnectionString);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sql = "insert into Staff values(" + TextBox1.Text + ",'" + TextBox2.Text + "','"
                          + TextBox3.Text + "','" + DropDownList1.SelectedValue + "'," + TextBox5.Text + ",' " + DateTime.Parse(TextBox6.Text) + "')";
            SqlCommand cmd = new SqlCommand(sql, conn);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
            ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "swal('Sucessfully Submitted!', '', 'success')", true);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string sql = "update Staff set FULLNAME='" + TextBox2.Text + "',EMAIL= '" + TextBox3.Text +
              "' , DESIGNATION='" + DropDownList1.SelectedValue + "',PAYRATE=" + TextBox5.Text + ",HIREDATE=' " + DateTime.Parse(TextBox6.Text) + "' where ID='" + DropDownList2.SelectedValue + "'";
            SqlCommand scmd = new SqlCommand(sql, conn);
            conn.Open();
            scmd.ExecuteNonQuery();
            conn.Close();
            ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "swal('Sucessfully Submitted!', '', 'success')", true);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            int std;
            std = Int32.Parse(DropDownList2.SelectedItem.Text);
            string sql = "delete from Staff where ID =" + std;
            SqlCommand scmd = new SqlCommand(sql, conn);
            conn.Open();
            scmd.ExecuteNonQuery();
            conn.Close();
            ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "swal('Sucessfully deleted!', '', 'success')", true);
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string sql;
            sql = "select * from Staff where ID='" + DropDownList2.SelectedValue + "'";
            SqlCommand scmd = new SqlCommand(sql, conn);
            conn.Open();
            SqlDataReader dr = scmd.ExecuteReader();
            dr.Read();
            TextBox1.Text = (dr["ID"].ToString());
            TextBox2.Text = (dr["FULLNAME"].ToString());
            TextBox3.Text = (dr["EMAIL"].ToString());
            DropDownList1.SelectedValue = (dr["DESIGNATION"].ToString());
            TextBox5.Text = (dr["PAYRATE"].ToString());
            TextBox6.Text = (dr["HIREDATE"].ToString());

            dr.Close();
            conn.Close();
        }
    }
}