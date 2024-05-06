using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Signature_Hotel_Management_System.Content.WebForms._7._Reservations.B._UpdateBooking
{
    public partial class WebForm1 : System.Web.UI.Page
    {        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            AppDomain.CurrentDomain.SetData("DataDirectory", Server.MapPath("~/App_Data"));
            conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["signaturedb"].ConnectionString);


        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {
            int std;
            std = Int32.Parse(DropDownList4.SelectedItem.Text);
            string sql;
            sql = "select * from Bookings where ReservationID=" + std;
            SqlCommand scmd = new SqlCommand(sql, conn);
            conn.Open();
            SqlDataReader dr = scmd.ExecuteReader();
            dr.Read();
            DropDownList4.SelectedValue = (dr["ReservationID"].ToString());
            TextBox2.Text = (dr["Name"].ToString());
            TextBox3.Text = (dr["PhoneNO"].ToString());
            TextBox4.Text = (dr["Guests"].ToString());
            TextBox5.Text = (dr["CheckIN"].ToString());
            TextBox6.Text = (dr["CheckOUT"].ToString());
            DropDownList1.SelectedValue = (dr["RoomNO"].ToString());
            DropDownList2.SelectedValue = (dr["RoomType"].ToString());
            DropDownList3.SelectedValue = (dr["RoomRate"].ToString());
            RadioButtonList1.SelectedValue = (dr["PaymentStatus"].ToString());

            dr.Close();
            conn.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sql;
            sql = "update Bookings set Name= '" + TextBox2.Text +
                    "', PhoneNO=" + TextBox3.Text +
                     ", Guests=" + TextBox4.Text + ", RoomNO='" + DropDownList1.SelectedValue
                     + "',RoomType='" + DropDownList2.SelectedValue
                     + "',RoomRate='" + DropDownList3.SelectedValue
                     + "',CheckIN=' " + DateTime.Parse(TextBox5.Text) + "'  ,CheckOUT = ' " + DateTime.Parse(TextBox6.Text)
                     + "' , PaymentStatus='" + RadioButtonList1.SelectedValue + "' where ReservationID='" + DropDownList4.SelectedValue + "'";
            SqlCommand scmd = new SqlCommand(sql, conn);
            conn.Open();
            scmd.ExecuteNonQuery();
            ClientScript.RegisterStartupScript(this.GetType(), "randomtext", "swal('Record updated!', '', 'success')", true);
            conn.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewBookings.aspx",true);
        }
    }
}