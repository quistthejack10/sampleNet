<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 262px;
        }
        .auto-style3 {
            width: 738px;
        }
        .auto-style4 {
            width: 262px;
            text-align: right;
        }
        .auto-style5 {
            width: 262px;
            text-align: right;
            height: 30px;
        }
        .auto-style6 {
            width: 738px;
            height: 30px;
        }
        .auto-style7 {
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style5">Enter Your Email:</td>
                <td class="auto-style6">
                    <asp:TextBox ID="txtEmail" runat="server" TextMode="Email" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfv1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Must Enter a value"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="REV1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Must Be an Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td class="auto-style7"></td>
            </tr>
            <tr>
                <td class="auto-style4">Enter Your Email again:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtEmail2" runat="server" TextMode="Email" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfv2" runat="server" ControlToValidate="txtEmail2" ErrorMessage="Must Enter a value"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="REV2" runat="server" ControlToValidate="txtEmail2" ErrorMessage="Must Be an Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <asp:CompareValidator ID="cv1" runat="server" ControlToCompare="txtEmail" ControlToValidate="txtEmail2" ErrorMessage="Emails must match."></asp:CompareValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Password:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtPass" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfv3" runat="server" ControlToValidate="txtPass" ErrorMessage="Must Enter a value"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Confirm Password:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtPass2" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfv4" runat="server" ControlToValidate="txtPass2" ErrorMessage="Must Enter a value"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPass" ControlToValidate="txtPass2" ErrorMessage="Passwords must match"></asp:CompareValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">First Name:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtFName" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfv5" runat="server" ControlToValidate="txtFName" ErrorMessage="Must Enter a value"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Last Name:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtLName" runat="server" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfv6" runat="server" ControlToValidate="txtLName" ErrorMessage="Must Enter a value"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">Year of Birth:</td>
                <td class="auto-style3">
                    <asp:TextBox ID="txtYOB" runat="server" TextMode="Number" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rfv7" runat="server" ControlToValidate="txtYOB" ErrorMessage="Must Enter a value"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="REV3" runat="server" ControlToValidate="txtYOB" ErrorMessage="Must be YYYY" ValidationExpression="\d{4}"></asp:RegularExpressionValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Button ID="btnSubmit" runat="server" BackColor="#99CCFF" CssClass="auto-style2" Text="Submit" />
                    <asp:Button ID="btnCancel" runat="server" CssClass="auto-style2" Text="Cancel" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:Student4720ConnectionString %>" DeleteCommand="DELETE FROM [Login] WHERE [Email] = @original_Email AND [Password] = @original_Password AND [FName] = @original_FName AND [LName] = @original_LName AND [YOB] = @original_YOB" InsertCommand="INSERT INTO [Login] ([Email], [Password], [FName], [LName], [YOB]) VALUES (@Email, @Password, @FName, @LName, @YOB)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Login]" UpdateCommand="UPDATE [Login] SET [Password] = @Password, [FName] = @FName, [LName] = @LName, [YOB] = @YOB WHERE [Email] = @original_Email AND [Password] = @original_Password AND [FName] = @original_FName AND [LName] = @original_LName AND [YOB] = @original_YOB">
            <DeleteParameters>
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Password" Type="String" />
                <asp:Parameter Name="original_FName" Type="String" />
                <asp:Parameter Name="original_LName" Type="String" />
                <asp:Parameter Name="original_YOB" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="FName" Type="String" />
                <asp:Parameter Name="LName" Type="String" />
                <asp:Parameter Name="YOB" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="FName" Type="String" />
                <asp:Parameter Name="LName" Type="String" />
                <asp:Parameter Name="YOB" Type="Int32" />
                <asp:Parameter Name="original_Email" Type="String" />
                <asp:Parameter Name="original_Password" Type="String" />
                <asp:Parameter Name="original_FName" Type="String" />
                <asp:Parameter Name="original_LName" Type="String" />
                <asp:Parameter Name="original_YOB" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
