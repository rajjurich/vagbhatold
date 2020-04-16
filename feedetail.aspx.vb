Imports System.Data.OleDb
Partial Class feedetail
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        'Dim date1 As Date = TextBox1.Text
        'Dim dateOnly As Date = date1.Date
        'Dim date2 As Date = TextBox2.Text
        'Dim dateOnly2 As Date = date2.Date
        Dim dbconn = New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;data source=" & Server.MapPath("vagbhatdb.mdb"))
        dbconn.Open()
        Dim sql = "select a.patient_id,a.patient_name,sum(b.fee) as Fees from patient_details a inner join patient_fee b on a.patient_id=b.patient_id where  (((b.fee_date)>#" & TextBox1.Text & "# And (b.fee_date)<#" & TextBox2.Text & "#)) group by a.patient_name,a.patient_id order by a.patient_id"
        'Response.Write(sql)
        'Response.End()
        Dim dbcomm = New OleDbCommand(sql, dbconn)
        Dim dbread = dbcomm.ExecuteReader()
        GridView1.DataSource = dbread
        GridView1.DataBind()
        dbread.Close()

        Dim sql2 = "select sum(fee) as Total_Fees from patient_fee where  (((fee_date)>#" & TextBox1.Text & "# And (fee_date)<#" & TextBox2.Text & "#))"
        Dim dbcomm2 = New OleDbCommand(sql2, dbconn)
        Dim dbread2 = dbcomm2.ExecuteReader()
        GridView2.DataSource = dbread2
        GridView2.DataBind()

        dbread2.Close()
        dbconn.Close()
    End Sub
End Class
