Imports System.Data.OleDb
Partial Class olddetail
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        'Response.Write(Request.QueryString("id"))
        Dim id = Request.QueryString("id")
        Session("id") = id

        If (id = "") Then
            Response.Redirect("default.aspx")
        End If
        Dim dbconn = New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;data source=" & Server.MapPath("vagbhatdb.mdb"))
        dbconn.Open()
        Dim sqlselect = "select patient_details.*,patient_ex_details.* from patient_details inner join patient_ex_details on patient_details.patient_id=patient_ex_details.patient_id where patient_details.patient_id like '" & id & "'"
        Dim dbcommsel = New OleDbCommand(sqlselect, dbconn)
        Dim dbreadsel = dbcommsel.ExecuteReader()
        dbreadsel.Read()
        'Response.Write(dbreadsel("patient_name"))
        TextBox1.Text = dbreadsel("patient_name")
        TextBox2.Text = dbreadsel("patient_age")
        TextBox3.Text = dbreadsel("patient_contact")
        TextBox4.Text = dbreadsel("patient_address")
        TextBox5.Text = dbreadsel("patient_history")
        TextBox6.Text = dbreadsel("patient_present_complain")
        TextBox7.Text = dbreadsel("rx_treatment")
        TextBox9.Text = dbreadsel("patient_visit_date")
        dbreadsel.Close()
        dbconn.Close()

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim id = Request.QueryString("id")
        Dim dbconn = New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;data source=" & Server.MapPath("vagbhatdb.mdb"))
        dbconn.Open()
        Dim sqlupdate = "update patient_ex_details set revisit_complain='" & TextBox10.Text & "',revisit_rx_treatment='" & TextBox12.Text & "',revisit_date='" & Now() & "',visit_status=Yes where patient_id like '" & id & "' and visit_status = No"
        'Dim sqlupdate = "select * from patient_ex_details where patient_id like '" & id & "' and visit_status like 'No'"
        'Response.Write(sqlupdate)
        'Response.End()
        Dim dbcomm = New OleDbCommand(sqlupdate, dbconn)
        Dim dbread = dbcomm.ExecuteReader()
        dbread.Close()
        dbconn.Close()
        dbconn.Open()
        Dim sqlex = "insert into patient_ex_details(patient_id,revisit_date,visit_status,revisit_complain,revisit_rx_treatment) values ('" & id & "','" & CDate(TextBox11.Text) & "',No,'','')"
        Dim dbcommex = New OleDbCommand(sqlex, dbconn)
        Dim dbreadex = dbcommex.ExecuteReader()
        dbreadex.Close()
        dbconn.Close()
        dbconn.Open()
        Dim sqlin = "insert into patient_fee(patient_id,fee,fee_date) values ('" & id & "','" & TextBox8.Text & "','" & TextBox11.Text & "')"
        Dim dbcommin = New OleDbCommand(sqlin, dbconn)
        Dim dbreadin = dbcommin.ExecuteReader()
        dbreadin.Close()
        dbconn.Close()
        Response.Redirect("Default.aspx?ty=u")
    End Sub
End Class
