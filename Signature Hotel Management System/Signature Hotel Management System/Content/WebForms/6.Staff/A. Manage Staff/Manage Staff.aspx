<%@ Page Title="" Language="C#" MasterPageFile="~/Content/WebForms/0.MasterPage/MasterPage.Master" AutoEventWireup="true" CodeBehind="Manage Staff.aspx.cs" Inherits="Signature_Hotel_Management_System.Content.WebForms._6.Staff.A._Manage_Staff.Manage_Staff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
     <style type="text/css">
         .button {
    background-color: #FFD400; /* yellow */
    border: none;
    color: black;
    padding: 8px 50px;   /* you can change the size of button from here */
    text-align: center;
    text-decoration: none;
    font-size: 16px;
    border-radius:40px;
    margin: 3px 1px 0px 0px;   /* you can change the position of button from here */
    transition-duration: 0.4s;
    cursor: pointer;
}
.button1 {
    background-color: #FFD400;
    color: black;
    border: 2px solid #FFD400;
    border-radius: 40px;
}

    .button1:hover {
        background-color: #FFD400;
        color: white;
        font-weight:bold;
    }
     .T1 {
    width: 30%;
    padding: 10px 10px;
    margin: 10px 10PX;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    margin-top: -0px;
    text-align: left;
  
        }
       
        .auto-style9 {
            font-size: medium;
            color: black;
            font-weight: bold;
            margin-left:250PX;
        }
        .auto-style10 {
            font-size: medium;
            color: #FF0000;
        }
     
         .auto-style1 {
             font-size: medium;
             font-weight: bold;
             text-align:center;
             margin-left:250PX;
         }
         .auto-style2 {
             font-size: large;
         }
       
    
         .auto-style11 {
             font-size: medium;
             font-weight: bold;
             margin-left:130px;
         }
         .auto-style12 {
             padding: 10px 10px;
             border: 1px solid #ccc;
             border-radius: 4px;
             box-sizing: border-box;
             margin-top: -0px;
             text-align: left;
             margin-left: 254px;
             margin-right: 10PX;
             margin-bottom: 10px;
         }
         .auto-style13 {
             font-size: medium;
             color: #FF0000;
             font-weight: bold;
             margin-left: 4px;         }
         </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;<span class="auto-style2"><strong><br />
    MANAGE STAFF </strong></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" CssClass="button button1" OnClick="Button1_Click" Text="INSERT" Width="162px" />
    &nbsp;
    <asp:Button ID="Button2" runat="server" CssClass="button button1" OnClick="Button2_Click" Text="EDIT" />
    &nbsp;
    <asp:Button ID="Button3" runat="server" CssClass="button button1" OnClick="Button3_Click" Text="DELETE" />
    <strong><span class="auto-style10">
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:staffdatad %>" SelectCommand="SELECT [ID] FROM [Staff]"></asp:SqlDataSource>
    <br />
    </span></strong>
    <centre>
    <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="STAFF ID*"></asp:Label>
    <asp:DropDownList ID="DropDownList2" runat="server" BackColor="#D9E1E0" CssClass="T1" DataSourceID="SqlDataSource1" Height="25px" Width="330px" DataTextField="ID" DataValueField="ID" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
    </asp:DropDownList>
    <br />
    <asp:TextBox ID="TextBox1" runat="server" BackColor="#D9E1E0" BorderStyle="None" CssClass="auto-style9" Height="31px" style="margin-left: 254px" Width="418px"></asp:TextBox>
    <strong><span class="auto-style3"><span class="auto-style4">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style10" ErrorMessage="Staff ID is required."></asp:RequiredFieldValidator>
    </span></span></strong>
    <br />
    <asp:Label ID="Label2" runat="server" CssClass="auto-style1" Text="NAME*"></asp:Label>
    <br />
    <asp:TextBox ID="TextBox2" runat="server" BackColor="#D9E1E0" BorderStyle="None" CssClass="auto-style9" Height="31px" style="margin-left: 255px" Width="418px"></asp:TextBox>
    <strong>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" CssClass="auto-style10" ErrorMessage="Name is required. " style="color: #FF0000"></asp:RequiredFieldValidator>
    </strong>
    <br />
    <asp:Label ID="Label3" runat="server" CssClass="auto-style1" Text="EMAIL*"></asp:Label>
    <br />
    <asp:TextBox ID="TextBox3" runat="server" BackColor="#D9E1E0" BorderStyle="None" CssClass="auto-style9" Height="31px" style="margin-left: 253px" TextMode="Email" Width="418px"></asp:TextBox>
    <span class="auto-style10">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3" CssClass="auto-style10" ErrorMessage="Email is required. " style="font-weight: 700"></asp:RequiredFieldValidator>
    </span>
    <br />
    <asp:Label ID="Label4" runat="server" CssClass="auto-style1" Text="DESIGNATION*"></asp:Label>
    <asp:Label ID="Label5" runat="server" CssClass="auto-style11" Text="PAY*"></asp:Label>
    <strong><span class="auto-style10">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList1" CssClass="auto-style10" ErrorMessage="Designation is required."></asp:RequiredFieldValidator>
    </span></strong>
    <br />
    <asp:DropDownList ID="DropDownList1" runat="server" BackColor="#D9E1E0" CssClass="auto-style12" Height="39px" Width="228px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        <asp:ListItem>General Manager</asp:ListItem>
        <asp:ListItem>Resident Manager</asp:ListItem>
        <asp:ListItem>Executive Housekeeper</asp:ListItem>
        <asp:ListItem>Front Office Manager</asp:ListItem>
        <asp:ListItem>Convention Services Manager</asp:ListItem>
        <asp:ListItem>Assistant Manager</asp:ListItem>
    </asp:DropDownList>
    <asp:TextBox ID="TextBox5" runat="server" BackColor="#D9E1E0" BorderStyle="None" CssClass="auto-style13" Height="31px" placeholder="OMR 330" Width="171px"></asp:TextBox>
    <strong><span class="auto-style10">
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox5" CssClass="auto-style10" ErrorMessage="Pay is required."></asp:RequiredFieldValidator>
    </span></strong>
    <br />
    <asp:Label ID="Label6" runat="server" CssClass="auto-style1" Text="HIRE DATE*"></asp:Label>
    <br />
    <asp:TextBox ID="TextBox6" runat="server" BackColor="#D9E1E0" BorderStyle="None" CssClass="auto-style9" Height="31px" style="margin-left: 254px" TextMode="Date" Width="418px"></asp:TextBox>
    <strong>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox6" CssClass="auto-style10" ErrorMessage="Hire Date is required" style="color: #FF0000;"></asp:RequiredFieldValidator>
    <br />
    <br />
    </strong>
    <br />
    <br />
    </centre>
</asp:Content>
