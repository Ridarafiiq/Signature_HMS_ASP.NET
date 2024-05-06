<%@ Page Title="" Language="C#" MasterPageFile="~/Content/WebForms/0.MasterPage/MasterPage.Master" AutoEventWireup="true" CodeBehind="Add_Booking.aspx.cs" Inherits="Signature_Hotel_Management_System.Content.WebForms.A._Bookings.Add_Booking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <link href="Bookings.css" rel="stylesheet" />

    <style type="text/css">
        .auto-style5 {
            margin-left: 80px;
        }
        .auto-style6 {
            margin-left: 40px;
        }
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="cont">
        <div class="lbl1">
        <asp:Label ID="Label1" runat="server" style="font-family: 'Century Gothic'; color: black; font-size: x-large" Text="ADD NEW BOOKING" CssClass="lbl1"></asp:Label>
    </div>
        <p class="auto-style8">
        <asp:TextBox ID="TextBox1" runat="server" CssClass="T1" placeholder="Reservation No"></asp:TextBox>

        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style6" ErrorMessage="ID cant be empty" ForeColor="#CC0000"></asp:RequiredFieldValidator>

        </p>
        <p class="auto-style5">
            &nbsp;</p>
        <div class="row">

                <asp:TextBox ID="TextBox2" runat="server" CssClass="T1" placeholder="Name"></asp:TextBox>
            &nbsp;

                <asp:TextBox ID="TextBox3" runat="server" CssClass="T1" placeholder="Phone Number"></asp:TextBox>

                <br />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="auto-style6" ErrorMessage="Name can't be empty." ForeColor="#FF3300"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" CssClass="auto-style6" ErrorMessage="Phone No can't be empty!" ForeColor="#FF3300"></asp:RequiredFieldValidator>

                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" CssClass="auto-style6" ErrorMessage="Phone No should be digits." ForeColor="#FF3300" ValidationExpression="(\(\d{3}\)|\d{3}-)?\d{8}"></asp:RegularExpressionValidator>

        </div>
    <p class="auto-style8">
        <asp:TextBox ID="TextBox4" runat="server" CssClass="T1" placeholder="Guests"></asp:TextBox>
        <asp:TextBox ID="TextBox5" runat="server" AutoPostBack="true"  CssClass="T1" placeholder="Check-In Date"  OnTextChanged="TextBox5_TextChanged"></asp:TextBox>
        <asp:TextBox ID="TextBox6" runat="server" CssClass="T1" placeholder="Check-Out Date" TextMode="Date"></asp:TextBox>
    </p>
        <p class="auto-style6">
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" CssClass="auto-style6" ErrorMessage="Guests can't be empty!" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" CssClass="auto-style6" ErrorMessage="Select Checkin date." ForeColor="#CC0000"></asp:RequiredFieldValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" CssClass="auto-style6" ErrorMessage="Select CheckOut Date." ForeColor="#CC0000"></asp:RequiredFieldValidator>
    &nbsp;&nbsp;&nbsp;
    </p>
    <p class="auto-style9">
        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="T1" placeholder="Room No">
            <asp:ListItem Value="">Room No</asp:ListItem>
            <asp:ListItem>101</asp:ListItem>
            <asp:ListItem>102</asp:ListItem>
            <asp:ListItem>109</asp:ListItem>
            <asp:ListItem>111</asp:ListItem>
            <asp:ListItem>115</asp:ListItem>
            <asp:ListItem>117</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="T1">
            <asp:ListItem Value="">Room Type</asp:ListItem>
            <asp:ListItem>Single</asp:ListItem>
            <asp:ListItem>Double</asp:ListItem>
            <asp:ListItem>Triple</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="DropDownList3" runat="server" CssClass="T1">
            <asp:ListItem Value="">Room Rate</asp:ListItem>
            <asp:ListItem> 90</asp:ListItem>
            <asp:ListItem> 170</asp:ListItem>
            <asp:ListItem> 200</asp:ListItem>
        </asp:DropDownList>
    </p>
        <p class="auto-style9">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="DropDownList1" CssClass="auto-style6" ErrorMessage="Select Room NO." ForeColor="#CC0000"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox4" CssClass="auto-style6" ErrorMessage="Select Room Type." ForeColor="#CC0000"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox4" CssClass="auto-style6" ErrorMessage="Select Room Rate." ForeColor="#CC0000"></asp:RequiredFieldValidator>
    </p>
    <p class="auto-style1">
        <asp:Label ID="Label2" runat="server" CssClass="auto-style4" Text="Payment Status:"></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="RadioButtonList1" CssClass="auto-style10" ErrorMessage="Select Payment Status." ForeColor="#CC0000"></asp:RequiredFieldValidator>
    </p>
    <div class="auto-style2">
        <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="auto-style2" RepeatDirection="Horizontal" Width="497px">
            <asp:ListItem>Paid</asp:ListItem>
            <asp:ListItem>Pending</asp:ListItem>
        </asp:RadioButtonList>
    </div>
    <p>
        <asp:Button ID="Button1" runat="server" Cssclass="button button1" OnClick="Button1_Click" style="margin-left: 76px" Text="Submit" />
        <asp:Button ID="Button2" runat="server" Cssclass="button button1" OnClick="Button2_Click" style="margin-left: 89px; margin-top: 2px" Text="View Bookings" Width="350px" />
    </p>
        </div>
</asp:Content>
