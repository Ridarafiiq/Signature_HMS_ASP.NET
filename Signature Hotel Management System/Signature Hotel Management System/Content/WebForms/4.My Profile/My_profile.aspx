<%@ Page Title="" Language="C#" MasterPageFile="~/Content/WebForms/0.MasterPage/MasterPage.Master" AutoEventWireup="true" CodeBehind="My_profile.aspx.cs" Inherits="Signature_Hotel_Management_System.Content.WebForms._4.My_Profile.My_profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
  font-family: arial;
  margin-left:160px;
  margin-top:45px;
  background-color:white;

}

    .auto-style2 {
        font-weight: bold;
        font-size: x-large;
    }

    .title {
  color: grey;
  font-size: 15px;
}

a {
  text-decoration: none;
  font-size: 20px;
  color: black;
}

    .fa{display:inline-block;font:normal normal normal 14px/1 FontAwesome;font-size:inherit;text-rendering:auto;-webkit-font-smoothing:antialiased;-moz-osx-font-smoothing:grayscale}

button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}


.Profile{
  margin-left:500px;
  margin-top:-490px;

}

  .input-container {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  width: 60%;
  margin-bottom: 15px;
 
   }

.icon {
  padding: 10px;
  background: #000;
  color: white;
  min-width: 20px;
  text-align: left;
  width:60%; 
}

.input-field {
  width: 610px;
  padding: 10px;
  outline: none;
  border: 2px solid #000;
}

    .auto-style1 {
        color: #FF0000;
    }

    .btn1 {
  background-color: white;
  color: black;
  padding: 10px 15px;
  border: none;
  cursor: pointer;
  width:25%;
  border: 2px solid #FFD400; 
  border-radius:40px;
  opacity: 0.9;
}

.btn {
  background-color: #FFD400;
  color: black;
  padding: 10px 15px;
  border: none;
  cursor: pointer;
  width:25%;
   border: 2px solid #FFD400; 
  border-radius:40px;
  opacity: 0.9;
}

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>



    <div class="card">
        <asp:Image ID="Image1" runat="server" ImageUrl="/Content/images/profile.jpg" Width="100%" Height="280px" />
        <asp:Label ID="Label1" runat="server" Text="Label" CssClass="auto-style2"></asp:Label>
        <p class="title">
            General Manager</p>
        <div style="margin: 24px 0;">
            <a href="#"><i class="fa fa-instagram"></i><i class="fa fa-twitter"></i><i class="fa fa-facebook"></i></a>
        </div>
        <p>
            <button>
                Contact
            </button>
        </p>
    </div>
    <div class="Profile">
        <h1>My Profile</h1>
        <div class="input-container">
            <i class="fa fa-id-card icon">&nbsp;ID  </i>
            <asp:Textbox ID="TextBox1" runat="server"  CssClass="input-field" BackColor="#FFD400" OnTextChanged="TextBox1_TextChanged"></asp:Textbox>
        </div>
        <div class="input-container">
            <i class="fa fa-user icon">&nbsp;First Name </i>
            <asp:TextBox ID="TextBox2" runat="server" placeholder="First Name"  CssClass="input-field"></asp:TextBox>
        </div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="First Name required." ControlToValidate="TextBox2" CssClass="auto-style1"></asp:RequiredFieldValidator>
        <div class="input-container">
            <i class="fa fa-user icon">&nbsp;Last Name </i>
            <asp:TextBox ID="TextBox7" runat="server" placeholder="Last Name"  CssClass="input-field"></asp:TextBox>
        </div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Last Name required." ControlToValidate="TextBox2" CssClass="auto-style1"></asp:RequiredFieldValidator>
        <div class="input-container">
            <i class="fa fa-user icon">&nbsp;Username </i>
            <asp:TextBox ID="TextBox8" runat="server" placeholder="Username"  CssClass="input-field"></asp:TextBox>
        </div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Username required." ControlToValidate="TextBox2" CssClass="auto-style1"></asp:RequiredFieldValidator>


        
        <div class="input-container">
            <i class="fa fa-phone icon">&nbsp;Phone NO</i>
            <asp:TextBox ID="TextBox3" runat="server"  placeholder="+968 ...."  CssClass="input-field"></asp:TextBox>
        </div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Phone NO required." ControlToValidate="TextBox3" CssClass="auto-style1"></asp:RequiredFieldValidator>
        <div class="input-container">
            <i class="fa fa-envelope icon">&nbsp;Email</i>
            <asp:TextBox ID="TextBox4" runat="server" placeholder="Email"  CssClass="input-field"></asp:TextBox>
        </div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Email required." ControlToValidate="TextBox4" CssClass="auto-style1"></asp:RequiredFieldValidator>
        <div class="input-container">
            <i class="fa fa-flag icon">&nbsp;Country</i>
            <asp:TextBox ID="TextBox5" runat="server" placeholder="Country"  CssClass="input-field"></asp:TextBox>
        </div>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Country required." ControlToValidate="TextBox2" CssClass="auto-style1"></asp:RequiredFieldValidator>
        <div class="input-container">
            <i class="fa fa-pencil-square-o icon">About</i>
            <asp:TextBox ID="TextBox6" runat="server" placeholder="About"  CssClass="input-field"></asp:TextBox>
        </div>
        &nbsp; 
        <asp:Button ID="Button1" runat="server" CssClass="btn1" Text="Back" causesvalidation="false" OnClick="Button1_Click1" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:Button ID="Button2" runat="server" CssClass="btn" Text="Save Changes" OnClick="Button2_Click" />
    </div>


&nbsp;&nbsp;&nbsp; 


    
  


</asp:Content>
