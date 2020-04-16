<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Accout_detail.aspx.vb" Inherits="Accout_detail" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

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
    <table width="60%" align="center" cellspacing="10px">
            <tr>
                <td>
                    Bill Number</td>
                    <td class="style2">
                    <asp:TextBox ID="TextBox1" runat="server" MaxLength="60" Width="300px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                  
                    
                </td>
            </tr>
            <tr>
                <td>
                    Medicine Name</td>
                    <td class="style2">
                    <asp:TextBox ID="TextBox2" runat="server" MaxLength="60" Width="300px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                  
                    
                </td>
            </tr>
             <tr>
                <td>
                    Dealer Name</td>
                    <td class="style2">
                    <asp:TextBox ID="TextBox3" runat="server" MaxLength="60" Width="300px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                  
                    
                </td>
            </tr>
            <tr>
                <td>
                    Quantity (in grams)</td>
                    <td class="style2">
                    <asp:TextBox ID="TextBox4" runat="server" MaxLength="60" Width="300px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
                  <asp:RegularExpressionValidator ID="RegularExpressionValidator" runat="server" ErrorMessage="Invalid" ControlToValidate="TextBox4" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                    
                </td>
            </tr>
             <tr>
                <td>
                    Price</td>
                <td class="style2">
                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Invalid" ControlToValidate="TextBox5" ValidationExpression="^\d+$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td>
                    Cheque/Cash Detail</td>
                    <td class="style2">
                    <asp:TextBox ID="TextBox6" runat="server" MaxLength="60" Width="300px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
                  
                    
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td class="style2">
                    <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" />
                   
                </td>
            </tr>
            </table>
    
    </div>
    </form>
</body>
</html>
