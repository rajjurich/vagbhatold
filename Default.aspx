<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" Title="Vagbhat Ayurveda Clinic Application" %>
<%@ Register Src="Revistors.ascx" TagName="Revisitors" TagPrefix="DigitalSource" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
    li
    {
        height:20px;
        list-style:square;
        padding:10px 10px 10px 10px;
    }
    a
    {
        color:Black;
        text-decoration:none;
        
        }
     .texta
     {
         color:#FF0000
         }
    
    </style>
    </head>
<body>
    <form id="form1" runat="server">
    <div align="center">
    <h1 align="center">Welcome to Vagbhat Ayurveda Clinic Application</h1>
    <div style="width:500px" align="left">
        <asp:Label ID="Label1" runat="server" Text="" CssClass="texta"></asp:Label></div>
            <div style="width:500px" align="left">
            <h2><u>Please select your Task</u></h2>
            <ul>
            <li>
                <asp:HyperLink ID="HyperLink1" NavigateUrl="NewDetail.aspx" runat="server">New Patient</asp:HyperLink></li>
            <li>
                <asp:HyperLink ID="HyperLink2" NavigateUrl="search.aspx" runat="server">Search</asp:HyperLink></li>
            <li>
                <asp:HyperLink ID="HyperLink3" NavigateUrl="feedetail.aspx" runat="server">View FEE Details</asp:HyperLink></li>
            
            <li>
           <%-- <asp:HyperLink ID="HyperLink6" NavigateUrl="order_details.aspx" runat="server">--%>Order Details<%--</asp:HyperLink>--%></li>
            <li>
                <asp:HyperLink ID="HyperLink4" NavigateUrl="Accout_detail.aspx" runat="server">Account Details</asp:HyperLink></li>
            
            <li>
                <asp:HyperLink ID="HyperLink5" NavigateUrl="view_account.aspx" runat="server">View Accounts</asp:HyperLink></li>
            </ul> 
            </div>   
    
    
   <div style="width:500px" align="center">
   
   <DigitalSource:Revisitors  ID="GridView_Revisitors" runat="server"  RowCount="10"  />
   
   
   
       </div>
   
    </div>
    
    
    
    </form>
    
</body>
</html>
