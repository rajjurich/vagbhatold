<%@ Control Language="VB" AutoEventWireup="false" CodeFile="Revistors.ascx.vb" Inherits="Revistors" %>

<asp:Button ID="Button1" runat="server" Text="Hide" />
   <h2>Today's Visitors</h2>
   
   
  <asp:GridView ID="gvwExample" runat="server" AutoGenerateColumns="False" Width="500"  >
<columns>
<asp:HyperLinkField DataTextField="patient_name" DataNavigateUrlFormatString="olddetail.aspx?id={0}" DataNavigateUrlFields="patient_id" HeaderText="Name" />
<asp:BoundField DataField="patient_visit_date" HeaderText="First Visit Date" />
<asp:BoundField DataField="revisit_date" HeaderText="Next Visit Date" />

</columns>
</asp:GridView>  

