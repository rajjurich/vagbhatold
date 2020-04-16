Imports System.Data.OleDb
Partial Class search
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim dbconn = New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;data source=" & Server.MapPath("vagbhatdb.mdb"))
        dbconn.Open()
        Dim sql = "select patient_id,patient_name,patient_age,patient_contact,patient_address from patient_details where patient_name like '%" + TextBox1.Text + "%'"
        Dim dbcomm = New OleDbCommand(sql, dbconn)
        Dim dbread = dbcomm.ExecuteReader()
        GridView1.DataSource = dbread
        GridView1.DataBind()
        dbread.Close()
        dbconn.Close()
    End Sub
End Class
