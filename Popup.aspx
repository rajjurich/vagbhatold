<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Popup.aspx.cs" Inherits="Popup" %>
<script language="javascript" type="text/javascript">
function SetDate(dateToSet)
{
// Retrieve name of textbox control from querystring
controlName = window.location.search.substr(1).substring(8);
// Set the text box to the selected date
window.opener.document.forms[0].
elements[controlName].value = dateToSet;
// Close the window
self.close();
}
</script>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
    a
    {
        text-decoration:none;
        color:#6666FF
    }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Calendar ID="calPopup" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" DayNameFormat="Shortest" Height="100%" Width="100%" OnDayRender="calPopup_DayRender" >
<SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
<SelectorStyle BackColor="#CCCCCC" />
<WeekendDayStyle BackColor="#FFFFCC" />
<OtherMonthDayStyle ForeColor="#808080" />
<TodayDayStyle BackColor="#ff7b7b" ForeColor="Black" />
<NextPrevStyle VerticalAlign="Bottom" />
<DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
<TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
</asp:Calendar>
    </div>
    </form>
</body>
</html>
