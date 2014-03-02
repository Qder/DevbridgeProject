<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: x-large;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            text-align: right;
            width: 120px;
        }
        .auto-style4 {
            width: 200px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <strong>Registration Page</strong></div>
        <table class="auto-style2">
            <tr>
                <td class="auto-style3">User Name</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxName" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter user name..." ControlToValidate="TextBoxName" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBoxName" Display="Dynamic" ErrorMessage="This username already exists" ForeColor="#FF3300" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
                
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Password</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxPassword" runat="server" Width="180px" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter user password..." ControlToValidate="TextBoxPassword" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Retype Password</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxRePassword" runat="server" Width="180px" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter user password..." ControlToValidate="TextBoxRePassword" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBoxPassword" ControlToValidate="TextBoxRePassword" ErrorMessage="Both password must math..." ForeColor="#FF3300"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Email Address</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxEmail" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Please enter email address..." ControlToValidate="TextBoxEmail" ForeColor="#FF3300"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter valid email address!" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBoxEmail"></asp:RegularExpressionValidator>
                </td>
            </tr>
        </table>
        <asp:Button ID="ButtonSubmit" runat="server" Text="Submit" OnClick="ButtonSubmit_Click" />
        <input id="ResetStartOver" type="reset" value="Start Over" /></form>
</body>
</html>
