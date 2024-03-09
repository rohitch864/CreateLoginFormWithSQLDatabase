<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LOGIN.aspx.cs" Inherits="LOGIN_FORM_ASP.LOGIN" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
  
        .auto-style2 {
            text-align:center;
            font-size:30px;
        }
        table {

            margin:auto;
            width:300px;
            border:5px black ridge;
        }
        .link {

            text-align:center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table cellpadding="4" cellspacing="4" >
            <tr>
                <td class="auto-style2" colspan="2">LOGIN</td>
            </tr>
            <tr>
                <td>USERNAME</td>
                <td>
                    <asp:TextBox ID="UserTextBox" runat="server" CausesValidation="True" Width="263px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="UserTextBox" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>PASSWORD</td>
                <td>
                    <asp:TextBox ID="PassTextBox" runat="server" Width="262px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="PassTextBox" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:Button ID="LoginButton" runat="server" Height="29px" Text="LOGIN" Width="71px" OnClick="LoginButton_Click" />
                </td>
            </tr>
            <tr>
                <td class="link" colspan="2">
                    <a href="REGISTER.aspx">Not Registered yet ? Click Here</a>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
