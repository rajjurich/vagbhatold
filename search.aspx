<%@ Page Language="VB" AutoEventWireup="false" CodeFile="search.aspx.vb" Inherits="search" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Vagbhat - Search</title>
    <style type="text/css">
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
        <table width="300" align="center">
            <tr>
                <td>
                    Name</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
                    </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Search" />
                    </td>
            </tr>
            </table>
    
    </div>
    <br /><br />
    <div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" HorizontalAlign="Center" Width="600">
       <Columns>
       <asp:HyperLinkField DataTextField="patient_name" DataNavigateUrlFormatString="olddetail.aspx?id={0}" DataNavigateUrlFields="patient_id" HeaderText="Name" />
<asp:BoundField DataField="patient_age" HeaderText="Age" />
<asp:BoundField DataField="patient_contact" HeaderText="Contact Number" />
<asp:BoundField DataField="patient_address" HeaderText="Address" />

       
       </Columns>
       
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
