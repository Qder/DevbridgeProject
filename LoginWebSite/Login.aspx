<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.1.1/css/bootstrap.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>

    <style type="text/css">
        .auto-style1 {
            font-size: x-large;
        }
        .auto-style2 {
            width: 50%;
        }
        .auto-style3 {
            width: 101px;
            text-align: right;
        }
        .auto-style4 {
            width: 200px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <strong>Login Page<br />
        <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
        </strong>
    
    </div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">User Name</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox1" runat="server" MaxLength="15" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="You must enter your user name..." ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Password</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBox2" runat="server" MaxLength="15" TextMode="Password" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="You must enter your password...!" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-primary" OnClick="Button1_Click" Text="Login" Width="100px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registration.aspx">New User Register Here...</asp:HyperLink>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
