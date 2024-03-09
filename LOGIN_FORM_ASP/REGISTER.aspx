<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="REGISTER.aspx.cs" Inherits="LOGIN_FORM_ASP.REGISTER" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 400px;
            margin:auto;
            border:ridge 5px black;
        }
        .auto-style2 {
            text-align:center;
            font-size:30px;
        }
        .auto-style3 {
            width: 142px;
          
        }
   
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table cellpadding="3" cellspacing="3" class="auto-style1">
            <tr>
                <td class="auto-style2" colspan="2">SIGNUP FORM</td>
            </tr>
            <tr>
                <td class="auto-style3">FIRST NAME</td>
                <td>
                    <asp:TextBox ID="FirstNameTextBox" runat="server" Width="203px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" ControlToValidate="FirstNameTextBox"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">LAST NAME</td>
                <td>
                    <asp:TextBox ID="LastNameTextBox" runat="server" Width="203px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" ControlToValidate="LastNameTextBox"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">GENDER</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="19px" Width="125px">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator InitialValue="Select" ID="RequiredFieldValidator3" runat="server" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" ControlToValidate="DropDownList1"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">EMAIL</td>
                <td>
                    <asp:TextBox ID="EmailTextBox" runat="server" Width="203px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" ControlToValidate="EmailTextBox"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="**" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">@@</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">ADDRESS</td>
                <td>
                    <asp:TextBox ID="AddressTextBox" runat="server" Width="203px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" ControlToValidate="AddressTextBox"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">USERNAME</td>
                <td>
                    <asp:TextBox ID="UserNameTextBox" runat="server" Width="203px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" ControlToValidate="UserNameTextBox"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">PASSWORD</td>
                <td>
                    <asp:TextBox ID="PasswordTextBox" runat="server" Width="203px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" ControlToValidate="PasswordTextBox"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="PasswordTextBox" Display="Dynamic" ErrorMessage="PLEASE  ENTER A STRONG PASSWORD" ForeColor="Red" SetFocusOnError="True" ValidationExpression="(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$">*</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">CONFIRM<br />
                    PASSWORD</td>
                <td class="auto-style4">
                    <asp:TextBox ID="ConfirmPasswordTextBox" runat="server" Width="203px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True" ControlToValidate="ConfirmPasswordTextBox"></asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="PasswordTextBox" ControlToValidate="ConfirmPasswordTextBox" Display="Dynamic" ErrorMessage="Password is not  Identical" ForeColor="Red" SetFocusOnError="True"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Height="36px" Text="SINGUP" Width="74px" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <a href="LOGIN.aspx">GO TO LOGIN FORM</a>
            </td>

           </tr>
        </table>

        <asp:ValidationSummary ID="ValidationSummary1" runat="server" BackColor="#CCCCCC" Font-Size="Larger" ForeColor="Red" />

    </div>
    </form>
</body>
</html>
