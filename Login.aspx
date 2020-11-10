<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            margin-left: 40px;
        }
        .auto-style3 {
            margin-left: 24px;
        }
        .auto-style4 {
            margin-left: 13px;
        }
        .auto-style5 {
            margin-left: 71px;
        }
        .auto-style6 {
            margin-left: 80px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lbluser" runat="server" Text="User ID"></asp:Label>
                        <asp:TextBox ID="txtUser" runat="server" CssClass="auto-style3"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtUser" ErrorMessage="must enter a value"></asp:RegularExpressionValidator>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblpass" runat="server" Text="Password"></asp:Label>
                        <asp:TextBox ID="txtPass" runat="server" CssClass="auto-style4" TextMode="Password"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPass" ErrorMessage="must enter a value"></asp:RegularExpressionValidator>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Student4720ConnectionString %>" SelectCommand="SELECT * FROM [Login] WHERE (([Email] = @Email) AND ([Password] = @Password))">
                            <SelectParameters>
                                <asp:ControlParameter ControlID="txtUser" Name="Email" PropertyName="Text" Type="String" />
                                <asp:ControlParameter ControlID="lblpass" Name="Password" PropertyName="Text" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <asp:Button ID="btnLogin" runat="server" CssClass="auto-style5" OnClick="btnLogin_Click" Text="Login" Width="60px" />
&nbsp;<asp:Button ID="btnCancel" runat="server" OnClick="btnCancel_Click" Text="Cancel" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
        <div class="auto-style6">
            <asp:Label ID="lblError" runat="server"></asp:Label>
        </div>
        <p>
            Don&#39;t have an account? Sign up Here
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Register.aspx">Sign Up</asp:HyperLink>
        </p>
    </form>
    <p>
&nbsp;</p>
</body>
</html>
