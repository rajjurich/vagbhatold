<%@ Page Language="VB" AutoEventWireup="false" CodeFile="view_account.aspx.vb" Inherits="view_account" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Vagbhat Ayurveda</title>
    
    <style type="text/css">
        .style2
        {
            width: 341px;
        }
         a
    {
        color:Black;
        text-decoration:none;
        
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h4 align="right"><asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Default.aspx">Back</asp:HyperLink></h4>
    <table class="style1" align="center">
            <tr>
                <td>
                    From Date</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                    <asp:ImageButton ID="btnDateStart" runat="server"  ImageUrl="images.jpg" OnClientClick="PickDate('TextBox1')" />
                </td>
                <td>
                    To Date</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                    <asp:ImageButton ID="ImageButton1" runat="server"  ImageUrl="images.jpg" OnClientClick="PickDate('TextBox2')" />
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Submit" />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    
    </div>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="true" Width="800" HorizontalAlign ="Center"  >
    </asp:GridView>
    <br />
    <div>
    
    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="true" Width="300" HorizontalAlign ="Center"  >
    </asp:GridView>
        
    </div>
    </form>
</body>
</html>
