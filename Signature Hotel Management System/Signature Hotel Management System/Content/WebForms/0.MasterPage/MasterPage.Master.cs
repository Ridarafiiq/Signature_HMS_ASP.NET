using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;
using System.Data.SqlClient;

namespace Signature_Hotel_Management_System.Content.WebForms
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // Remove the forms-authentication ticket from the browser
            Session.Abandon();
            Response.Redirect("~/Content/WebForms/1.Login/Login.aspx");
        }
    }
    }