Imports System.Data.OleDb
Partial Class view_account
    Inherits System.Web.UI.Page
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim dbconn = New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;data source=" & Server.MapPath("vagbhatdb.mdb"))
        dbconn.Open()
        Dim sql = "select bill_no,medicine_name,dealer_name,quantity,price,cheque_cash_details,bill_date from account_details where  (((bill_date)>#" & TextBox1.Text & "# And (bill_date)<#" & TextBox2.Text & "#)) order by bill_date"
        'Response.Write(sql)
        'Response.End()
        Dim dbcomm = New OleDbCommand(sql, dbconn)
        Dim dbread = dbcomm.ExecuteReader()
        GridView1.DataSource = dbread
        GridView1.DataBind()
        dbread.Close()

        Dim sql2 = "select sum(price) as Total_Price from account_details where  (((bill_date)>#" & TextBox1.Text & "# And (bill_date)<#" & TextBox2.Text & "#))"
        Dim dbcomm2 = New OleDbCommand(sql2, dbconn)
        Dim dbread2 = dbcomm2.ExecuteReader()
        GridView2.DataSource = dbread2
        GridView2.DataBind()

        dbread2.Close()
        dbconn.Close()
    End Sub
End Class
