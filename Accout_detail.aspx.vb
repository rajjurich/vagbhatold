Imports System.Data.OleDb
Partial Class Accout_detail
    Inherits System.Web.UI.Page
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim dbconn = New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;data source=" & Server.MapPath("vagbhatdb.mdb"))
        dbconn.Open()
        Dim sql = "insert into account_details(bill_no,medicine_name,dealer_name,quantity,price,cheque_cash_details,bill_date) values('" & TextBox1.Text & "','" & TextBox2.Text & "','" & TextBox3.Text & "','" & TextBox4.Text & "','" & TextBox5.Text & "','" & TextBox6.Text & "','" & Now() & "')"
        Dim dbcomm = New OleDbCommand(sql, dbconn)
        Dim dbread = dbcomm.ExecuteReader()
        'customers.DataSource = dbread
        'customers.DataBind()
        dbread.Close()
        dbconn.Close()

        Response.Redirect("Default.aspx?ty=t")
    End Sub
End Class
