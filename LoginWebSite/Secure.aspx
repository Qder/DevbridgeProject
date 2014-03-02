<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Secure.aspx.cs" Inherits="Secure" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">   
    <div>
        <asp:Menu ID="Menu1" runat="server">
            <Items>
                <asp:MenuItem NavigateUrl="~/Admin.aspx" Text="Users" Value="Users"></asp:MenuItem>
            </Items>
        </asp:Menu>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Log Out" />
    </div>
        <div>

        </div>
    </form>
</body>
</html>
