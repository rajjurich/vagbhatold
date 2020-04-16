Imports System.Data.OleDb
Partial Class Revistors
    Inherits System.Web.UI.UserControl
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim dbconn = New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;data source=" & Server.MapPath("vagbhatdb.mdb"))
        dbconn.Open()


        'Response.End()
        Dim date1 As Date = Now
        Dim dateOnly As Date = date1.Date
        'Response.Write(dateOnly.ToString("d"))

        Dim sqlselect = "select patient_details.patient_name,Format([patient_ex_details.revisit_date],'Long Date') as revisit_date,Format([patient_details.patient_visit_date],'Long Date') as patient_visit_date,patient_details.patient_id from patient_ex_details inner join patient_details on patient_ex_details.patient_id=patient_details.patient_id  where revisit_date like '" & dateOnly.ToString("d") & "' and patient_ex_details.visit_status=No"
        'Response.Write(sqlselect)
        Dim dbcommsel = New OleDbCommand(sqlselect, dbconn)
        Dim dbreadsel = dbcommsel.ExecuteReader()
       

        gvwExample.DataSource = dbreadsel
        gvwExample.DataBind()

        dbconn.Close()


        

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        If (gvwExample.Visible = True) Then
            Button1.Text = "Unhide"
            gvwExample.Visible = False
        Else
            Button1.Text = "Hide"
            gvwExample.Visible = True
        End If




    End Sub
End Class
