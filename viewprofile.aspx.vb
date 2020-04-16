Imports System.Data.OleDb
Partial Class viewprofile
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Response.Write(Session("id"))
        If (Session("id") = "") Then
            Response.Redirect("default.aspx")
        End If
        Dim dbconn = New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;data source=" & Server.MapPath("vagbhatdb.mdb"))
        dbconn.Open()
        Dim sqlselect = "select a.patient_name as Patient_Name,a.patient_history as History,a.patient_present_complain as Pre_Compalin,a.rx_treatment as Treatment,Format([a.patient_visit_date],'Long Date') as First_Visit_Date,Format([b.revisit_date],'Long Date') as Revisit_or_Revisited_Date,b.revisit_complain as Revisit_Complain,b.revisit_rx_treatment as Revisit_Treatment from patient_details a inner join patient_ex_details b on a.patient_id=b.patient_id where a.patient_id like '" + Session("id") + "'"
        'Response.Write(sqlselect)
        ' Response.End()
        Dim dbcomm = New OleDbCommand(sqlselect, dbconn)
        Dim dbread = dbcomm.ExecuteReader()
        GridView1.DataSource = dbread
        GridView1.DataBind()
       
        dbread.Close()
        dbconn.Close()
    End Sub
    
End Class
