<%@ Page Title="" Language="C#" MasterPageFile="~/Content/WebForms/0.MasterPage/MasterPage.Master" AutoEventWireup="true" CodeBehind="View Staff.aspx.cs" Inherits="Signature_Hotel_Management_System.Content.WebForms._6.Staff.B._View_Staff.View_Staff" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
<style type="text/css">
        .button2 {
    background-color: #FFD400; /* yellow */
    border: none;
    color: black;
    padding: 8px 50px;
    text-align: center;
    text-decoration: none;
    font-size: 16px;
    border-radius:40px;
    margin: 3px 1px 0px 7px;
    transition-duration: 0.4s;
    cursor: pointer;
}
.button4 {
    background-color: #FFD400;
    color: black;
    border: 2px solid #FFD400;
    border-radius: 40px;
}

    .button4:hover {
        background-color: #FFD400;
        color: white;
        font-weight:bold;
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
            .T1 {
    width: 30%;
    padding: 15px 20px;
    margin: 0px 5PX;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    margin-top: -0px;
    text-align: left;
}
        }
        .auto-style9 {
            font-family: sans-serif;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div  runat="server" class="auto-style1">

        <div>
            <br />
            <asp:Label ID="Label1" runat="server" CssClass="auto-style9" style="color: black; font-size: x-large" Text="STAFF OVERVIEW "></asp:Label>
            <br />
            <br />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            <asp:TextBox ID="TextBox1" runat="server" CssClass="T1" placeholder="Enter Staff ID"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" CssClass="button2 button4" OnClick="Button1_Click" style="font-size: small; font-family: 'Century Gothic'" Text="SEARCH" />
            <span class="auto-style7">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span>
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
            <asp:Label ID="Label12" runat="server" CssClass="auto-style8" Text="Staff's details:"></asp:Label>
            <br />
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style5" DataKeyNames="ID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="100px" HorizontalAlign="Center" Width="1050px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                    <asp:BoundField DataField="FULLNAME" HeaderText="FULLNAME" SortExpression="FULLNAME" />
                    <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" SortExpression="EMAIL" />
                    <asp:BoundField DataField="DESIGNATION" HeaderText="DESIGNATION" SortExpression="DESIGNATION" />
                    <asp:BoundField DataField="PAYRATE" HeaderText="PAYRATE" SortExpression="PAYRATE" />
                    <asp:BoundField DataField="HIREDATE" HeaderText="HIREDATE" SortExpression="HIREDATE" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:staffdatad %>" SelectCommand="SELECT * FROM [Staff]"></asp:SqlDataSource>
            <br />
            <br />
        </div>

    </div>
</asp:Content>
