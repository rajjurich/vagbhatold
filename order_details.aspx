<%@ Page Language="VB" AutoEventWireup="false" CodeFile="order_details.aspx.vb" Inherits="order_details" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<script language="javascript" type="text/javascript">
function PickDate(controlName)
{
var wnd = null;
// Set up the look of the popup window
var settings='width=300,height=200,top=200,left=300,location=no,menubar=no,toolbar=no,scrollbars=no,resizable=yes,status=yes';
// Pass the control name that will receive the date
var url = 'Popup.aspx?control=' + controlName;
// Open the popup window
wnd = window.open(url,'DatePopup',settings);
// Give popup window the focus if browser
// supports this capability
if (wnd.focus){ wnd.focus(); }
}
</script>
<head runat="server">
    <title>Vagbhat Ayurveda</title>
   
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table  width="60%" align="center" cellspacing="10px">
            <tr>
                <td>
                    Medicine Name</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Quantity</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                    
                </td>
            </tr>
            <tr>
                <td>
                    Order Date</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:ImageButton ID="btnDateStart" runat="server"  ImageUrl="images.jpg" OnClientClick="PickDate('TextBox2')" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Order From</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Submit" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
