<%@ Page Language="VB" AutoEventWireup="false" CodeFile="olddetail.aspx.vb" Inherits="olddetail" %>

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
        
    <h4 align="right">
    <asp:HyperLink ID="HyperLink2" runat="server" onclick="javascript:window.open('viewprofile.aspx','','width=1000,height=768,menubar=No,scrollbars=Yes')" Text="click" NavigateUrl="#" >View Profile</asp:HyperLink>
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Default.aspx">Back</asp:HyperLink></h4>
       
       
    <table width="60%" align="center" cellspacing="10px">
            <tr>
                <td>
                    Name</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox1" runat="server" MaxLength="60" Width="300px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Invalid" ControlToValidate="TextBox1" ValidationExpression="^([a-zA-Z\s]{1,60})"></asp:RegularExpressionValidator>
                    
                </td>
            </tr>
            <tr>
                <td>
                    Age</td>
                <td class="style2">
                   
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Phone/Mobile</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox3" runat="server"  Width="300px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid" ControlToValidate="TextBox3" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Address</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox4" runat="server" Width="300px" TextMode="MultiLine" Height="50px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    History</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox5" runat="server" Width="300px" TextMode="MultiLine" Height="50px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Pre Complain</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox6" runat="server" Width="300px" TextMode="MultiLine" Height="50px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
                
                </td>
                
            </tr>
            <tr>
                <td>
                    Pre
                    Rx(Treatment)</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox7" runat="server" Width="300px" TextMode="MultiLine" Height="50px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ControlToValidate="TextBox7"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td>
                    First Visit</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td>
                    Revisit Complain</td>
                <td class="style2">
                <asp:TextBox ID="TextBox10" runat="server" Width="300px" TextMode="MultiLine" Height="50px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="*" ControlToValidate="TextBox10"></asp:RequiredFieldValidator>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    Revisit Rx</td>
                <td class="style2"><asp:TextBox ID="TextBox12" runat="server" Width="300px" TextMode="MultiLine" Height="50px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="*" ControlToValidate="TextBox12"></asp:RequiredFieldValidator>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    Next Visit</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox11" runat="server" ></asp:TextBox>
                    
                    <asp:ImageButton ID="btnDateStart" runat="server"  ImageUrl="images.jpg" OnClientClick="PickDate('TextBox11')" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="TextBox11"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Fee</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="*" ControlToValidate="TextBox8"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Invalid" ControlToValidate="TextBox8" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style2">
                    <asp:Button ID="Button1" runat="server" Text="Submit" />
                   
                </td>
            </tr>
            </table>
    
    
    </div>
    </form>
</body>
</html>
