<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Signature_Hotel_Management_System.Content.WebForms._1.Login.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<a href="../">../</a>
<head runat="server">
    <title>Login</title>
    <link href="Log_Css.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="Row">
                <div class="Row row_pan">
                    <div class="col-md-12 center_pan">
                        <section class="SectionL">
                            <p>
                                Login Page</p>
                            <div class=" login-form logsection">
                                <asp:TextBox ID="TextBox1" runat="server" BackColor="#F6F6F6" BorderStyle="None" Height="35px" Placeholder="Username" style="border-radius:3.5px;" Width="350px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please enter your username"></asp:RequiredFieldValidator>
                                <br />
                                <asp:TextBox ID="TextBox2" runat="server" BackColor="#F6F6F6" BorderStyle="None" Height="35px" Placeholder="Password" style="border-radius:3.5px;" TextMode="Password" Width="350px"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please enter your password"></asp:RequiredFieldValidator>
                                <br />
                                <asp:Label ID="Label2" runat="server"></asp:Label>
                                <br />
                                <asp:Button ID="Button1" runat="server" BorderStyle="None" Height="45px"  style="border-radius:7.5px;" Text="Button" Width="165px" />
                                <br />
                                <br />
                                <br />
                                <br />
                                <div class="new_account">
                                    <asp:Label ID="Label1" runat="server" Text="Don't have account?"></asp:Label>
                                    &nbsp;
                                    <asp:DynamicHyperLink ID="DynamicHyperLink1" runat="server" BorderStyle="None" NavigateUrl="~/Content/WebForms/2.Signup/Sign_up.aspx"> <b><i>Create a New Account</i></b> </asp:DynamicHyperLink>
                                </div>
                            </div>
                        </section>
                        <section class="SectionR">
                        </section>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
