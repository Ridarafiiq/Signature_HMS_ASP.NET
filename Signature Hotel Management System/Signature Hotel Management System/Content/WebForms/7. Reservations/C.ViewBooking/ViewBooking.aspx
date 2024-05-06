<%@ Page Title="" Language="C#" MasterPageFile="~/Content/WebForms/0.MasterPage/MasterPage.Master" AutoEventWireup="true" CodeBehind="ViewBooking.aspx.cs" Inherits="Signature_Hotel_Management_System.Content.WebForms._7._Reservations.C.ViewBooking.ViewBooking" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    link href="/Content/Assets/CSS/Bookings.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            font-family: "Century Gothic";
            font-size: medium;
            color: #808080
        }
        .auto-style2 {
            font-family: "Century Gothic";
            font-size: x-small;
            border-color:black;
        }
        .auto-style5 {
            font-family: "Segoe UI Historic";
            font-size: small;
            border-color: black;
        }
        .auto-style6 {
            font-size: small;
            font-family: "Segoe UI Historic";
        }
        .auto-style7 {
            font-size: small;
            font-family: "Century Gothic";
        }
        .auto-style8 {
            font-family: "Century Gothic";
            font-size: medium;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
            <asp:Label ID="Label1" runat="server" style="font-family: 'Century Gothic'; color: black; font-size: x-large" Text="CUSTOMERS BOOKINGS REVIEW"></asp:Label>
            <br />
            <span class="auto-style1">Search and view all the customer's bookings. <br />
            <br />
            </span>
            <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Reservation ID" CssClass="T1"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="SEARCH" CssClass="button2 button4" style="font-size: small; font-family: 'Century Gothic'" OnClick="Button1_Click" />
            <span class="auto-style7">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            </span>
            <asp:Button ID="Button2" runat="server" Text="ADD" CssClass="button3 button5" style="font-size: small; font-family: 'Century Gothic'" OnClick="Button2_Click" />
            <asp:Button ID="Button3" runat="server" Text="UPDATE" CssClass="button3 button5" style="font-size: small; font-family: 'Century Gothic'" OnClick="Button3_Click" />
           
          
            <br class="auto-style6" />
            <asp:Label ID="Label11" runat="server" CssClass="auto-style8"></asp:Label>
            <br />



            <asp:GridView ID="GridView2" runat="server" CellPadding="4" CssClass="auto-style5" ForeColor="#333333" GridLines="None" Height="100px" HorizontalAlign="Center" Width="1050px">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="Black" BorderColor="Black" Font-Bold="True" ForeColor="White" VerticalAlign="Middle" />
                <PagerStyle BackColor="#4878D9" ForeColor="White" HorizontalAlign="Center" Width="100px" />
                <RowStyle BackColor="#FFF2B2" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#FFD400" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>

            <asp:Label ID="Label12" runat="server" CssClass="auto-style8" Text="Customer's Bookings:"></asp:Label>
            <br />
            <asp:GridView ID="GridView3" runat="server" CellPadding="4" CssClass="auto-style5" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="100px" HorizontalAlign="Center" Width="1050px" AutoGenerateColumns="False" DataKeyNames="ReservationID">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="ReservationID" HeaderText="ReservationID" ReadOnly="True" SortExpression="ReservationID" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="PhoneNO" HeaderText="PhoneNO" SortExpression="PhoneNO" />
                    <asp:BoundField DataField="Guests" HeaderText="Guests" SortExpression="Guests" />
                    <asp:BoundField DataField="RoomNO" HeaderText="RoomNO" SortExpression="RoomNO" />
                    <asp:BoundField DataField="RoomType" HeaderText="RoomType" SortExpression="RoomType" />
                    <asp:BoundField DataField="RoomRate" HeaderText="RoomRate" SortExpression="RoomRate" />
                    <asp:BoundField DataField="CheckIN" HeaderText="CheckIN" SortExpression="CheckIN" />
                    <asp:BoundField DataField="CheckOUT" HeaderText="CheckOUT" SortExpression="CheckOUT" />
                    <asp:BoundField DataField="PaymentStatus" HeaderText="PaymentStatus" SortExpression="PaymentStatus" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#FFD400" Font-Bold="True" ForeColor="Black" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFF2B2" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#FFD400" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BookingsDatabase %>" SelectCommand="SELECT * FROM [Bookings]"></asp:SqlDataSource>
            <br />
            <br />
        </div>

</asp:Content>
