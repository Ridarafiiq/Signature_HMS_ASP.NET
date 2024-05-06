<%@ Page Title="" Language="C#" MasterPageFile="~/Content/WebForms/0.MasterPage/MasterPage.Master" AutoEventWireup="true" CodeBehind="UpdateBooking.aspx.cs" Inherits="Signature_Hotel_Management_System.Content.WebForms._7._Reservations.B._UpdateBooking.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <link href="Bookings.css" rel="stylesheet" />

    <style type="text/css">
        .auto-style6 {
            font-size: medium;
            color: #CC0000;
        }
        .auto-style8 {
            height: 64px;
        }
        .auto-style9 {
            height: 60px;
        }
        .auto-style10 {
        font-size: medium;
        color: #CC0000;
        font-family: "Century Gothic";
        font-weight: bold;
    }
        </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
            <asp:Label ID="Label1" runat="server" style="font-family: 'Century Gothic'; color:black; font-size: x-large" Text="UPDATE CUSTOMER'S BOOKING"></asp:Label>
        </div>

        <p class="auto-style8">
            <asp:DropDownList ID="DropDownList4" placeholder="None" runat="server" DataSourceID="SqlDataSource1" DataTextField="ReservationID" DataValueField="ReservationID" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged" CssClass="T1" AutoPostBack="True">
            </asp:DropDownList>
            <asp:TextBox ID="TextBox2" runat="server" placeholder="Name" CssClass="T1" ></asp:TextBox>
            <asp:TextBox ID="TextBox3" runat="server" placeholder="Phone Number" CssClass="T1"></asp:TextBox>   &nbsp; &nbsp; <span class="auto-style6">&nbsp;&nbsp; </span>

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="auto-style6" ErrorMessage="Name can't be empty."></asp:RequiredFieldValidator> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" CssClass="auto-style6" ErrorMessage="Phone No can't be empty!."></asp:RequiredFieldValidator>

            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" CssClass="auto-style6" ErrorMessage="PhoneNo should be numbers!" ValidationExpression="(\(\d{3}\)|\d{3}-)?\d{8}" ControlToValidate="TextBox3"></asp:RegularExpressionValidator>

        </p>
        
        <p class="auto-style8">
            <asp:TextBox ID="TextBox4" runat="server" placeholder="Guests" CssClass="T1"></asp:TextBox> 
            <asp:TextBox ID="TextBox5" runat="server" onfocus="(this.type='date')" CssClass="T1"></asp:TextBox>
            <asp:TextBox ID="TextBox6" runat="server" onfocus="(this.type='date')" CssClass="T1"></asp:TextBox>             
            &nbsp; &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" CssClass="auto-style6" ErrorMessage="Guests can't be empty!" ForeColor="#CC0000" ></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" CssClass="auto-style6" ErrorMessage="Couldn't exceed 6 guests." MaximumValue="6" MinimumValue="1" ControlToValidate="TextBox4"></asp:RangeValidator>
   
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" CssClass="auto-style6" ErrorMessage="Select Checkin date." ForeColor="#CC0000" ></asp:RequiredFieldValidator>
    &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" CssClass="auto-style6" ErrorMessage="Select CheckOut Date." ForeColor="#CC0000" ></asp:RequiredFieldValidator>
        </p>

    <p class="auto-style9">
         <asp:DropDownList ID="DropDownList1" placeholder="Room No" CssClass="T1" runat="server">
                <asp:ListItem Value="">Room No</asp:ListItem>
                <asp:ListItem>101</asp:ListItem>
                <asp:ListItem>102</asp:ListItem>
                <asp:ListItem>109</asp:ListItem>
                <asp:ListItem>111</asp:ListItem>
                <asp:ListItem>115</asp:ListItem>
                <asp:ListItem>117</asp:ListItem>
            </asp:DropDownList>

            <asp:DropDownList ID="DropDownList2" CssClass="T1"  runat="server">
                <asp:ListItem Value="">Room Type</asp:ListItem>
                <asp:ListItem>Single</asp:ListItem>
                <asp:ListItem>Double</asp:ListItem>
                <asp:ListItem>Triple</asp:ListItem>
            </asp:DropDownList>

            <asp:DropDownList ID="DropDownList3" CssClass="T1"  runat="server" AutoPostBack="True">
                <asp:ListItem Value="">Room Rate</asp:ListItem>
                <asp:ListItem> 90</asp:ListItem>
                <asp:ListItem> 170</asp:ListItem>
                <asp:ListItem> 200</asp:ListItem>
            </asp:DropDownList>
             &nbsp; &nbsp;&nbsp;  
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="DropDownList1" CssClass="auto-style6" ErrorMessage="Select Room NO." ForeColor="#CC0000" ></asp:RequiredFieldValidator>
            &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
      &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; 
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox4" CssClass="auto-style6" ErrorMessage="Select Room Type." ForeColor="#CC0000" ></asp:RequiredFieldValidator>
    &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;        
    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox4" CssClass="auto-style6" ErrorMessage="Select Room Rate." ForeColor="#CC0000" ></asp:RequiredFieldValidator>
    </p>
         <p class="auto-style1" >
             <asp:Label ID="Label2" runat="server" Text="Payment Status:" CssClass="auto-style4"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="RadioButtonList1" CssClass="auto-style10" ErrorMessage="Select Payment Status." ForeColor="#CC0000" ></asp:RequiredFieldValidator>

             <div class="auto-style2">
                 <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal" Width="497px" CssClass="auto-style2">
                     <asp:ListItem>Paid</asp:ListItem>
                     <asp:ListItem>Pending</asp:ListItem>
                 </asp:RadioButtonList>
             </div>
  
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:signaturedb %>" SelectCommand="SELECT [ReservationID], [RoomRate] FROM [Bookings]"></asp:SqlDataSource>
            <asp:Button ID="Button1" runat="server" Cssclass="button button1" Text="Update" OnClick="Button1_Click"  />
            <asp:Button ID="Button2" runat="server" Text="View Bookings" CssClass="button button1" style="margin-left: 77px" Width="349px" OnClick="Button2_Click" PostBackUrl="ViewBookings.aspx" />
        </p>

</asp:Content>
