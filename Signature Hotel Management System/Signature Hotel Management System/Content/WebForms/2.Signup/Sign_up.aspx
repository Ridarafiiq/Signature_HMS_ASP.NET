<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sign_up.aspx.cs" Inherits="Signature_HMS.signup.Sign_up" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no" />
    <title></title>
    <link href="SignUp_CSS.css" rel="stylesheet" />
    </head>

<body>
    <form id="form1" runat="server">
        <div>
            <div class="Row">
                <div class="Row row_pan">
                    <div class="col-md-12 center_pan">
                        <section class="SectionR">
                            <p> Sign Up </p>
                            <div class=" login-form logsection">
                                <asp:TextBox ID="TextBox1" runat="server" BackColor="#F6F6F6" BorderStyle="None" Height="35px" style="border-radius:3.5px;" Width="350px" Placeholder="First Name"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Please enter your First Name"></asp:RequiredFieldValidator>
                                
                                <asp:TextBox ID="TextBox2" runat="server" BackColor="#F6F6F6" BorderStyle="None" Height="35px" style="border-radius:3.5px;" Width="350px" Placeholder="Last Name"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please enter your Last Name"></asp:RequiredFieldValidator>
                                
                                <asp:TextBox ID="TextBox3" runat="server" BackColor="#F6F6F6" BorderStyle="None" Height="35px" Width="350px" Placeholder="Username"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please enter your User"></asp:RequiredFieldValidator>
                                
                                <asp:TextBox ID="TextBox4" runat="server" BackColor="#F6F6F6" BorderStyle="None" Height="35px" Width="350px" Placeholder="Email"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox2" ErrorMessage="Please enter your Email"></asp:RequiredFieldValidator>
                                
                                <asp:TextBox ID="TextBox5" runat="server" BackColor="#F6F6F6" BorderStyle="None" Height="35px" Width="350px" Placeholder="Password" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox2" ErrorMessage="Password field can't be empty"></asp:RequiredFieldValidator>
                                
                                <asp:TextBox ID="TextBox6" runat="server" BackColor="#F6F6F6" BorderStyle="None" Height="35px" Width="350px" Placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox2" ErrorMessage="This field can't be empty"></asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox5" ControlToValidate="TextBox6" ErrorMessage="Password doesn't match, Please reenter your password"></asp:CompareValidator>
                                   
                                <div class="Chk">
                                
                                    <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" Text=" " />
                                    <asp:Label ID="Label1" runat="server" Text=" I agree to the <i><b> Terms of use </b></i > and <i><b> privacy policy  </b></i> <br> of the Application. </br>"></asp:Label>
                                    <br />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </div>

                                    <div class="Btuon">
                                    <asp:Button ID="Button1" runat="server" BorderStyle="None" Height="45px" Text="Submit" Width="165px" OnClick="Button1_Click1" />
                                        &nbsp;
                                        &nbsp;<asp:Button ID="Button2" runat="server" BorderStyle="None" Height="45px" Text="Cancel" Width="165px" causesvalidation="false" OnClick="Button2_Click" />
                                </div>
                                
                                
                            </div>
                        </section>
                        <section class="SectionL">
                        </section>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
