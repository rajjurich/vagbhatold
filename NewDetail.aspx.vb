Imports System.Data.OleDb
Partial Class NewDetail
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        DropDownList2.Items.Add(New ListItem("Select", ""))
        For i = 0 To 99
            DropDownList2.Items.Add(New ListItem(i))
            'DropDownList2.Items.Add(New ListItem("Blue"))

            'DropDownList2.Items.Add(New ListItem("Green", "#00FF00"))
        Next

    End Sub


    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        'Dim dbconn, sql, dbcomm, dbread

        Dim dbconn = New OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0;data source=" & Server.MapPath("vagbhatdb.mdb"))
        dbconn.Open()
        Dim sqlselect = "select patient_id from patient_id"
        Dim dbcommsel = New OleDbCommand(sqlselect, dbconn)
        Dim dbreadsel = dbcommsel.ExecuteReader()
        Dim patient_id As Integer
        If dbreadsel.HasRows Then

            dbreadsel.Read()


            patient_id = dbreadsel("patient_id")


            patient_id = patient_id + 1
        Else
            patient_id = 1
        End If

        'Response.Write(patient_id)
        'Response.End()
        dbreadsel.Close()
        dbconn.Close()

        dbconn.Open()
        Dim sql = "insert into patient_details(patient_id,patient_name,patient_age,patient_address,patient_contact,patient_history,patient_present_complain,rx_treatment,patient_visit_date) values('" & patient_id & "','" & TextBox1.Text & "','" & DropDownList2.Text & "','" & TextBox4.Text & "','" & TextBox3.Text & "','" & TextBox5.Text & "','" & TextBox6.Text & "','" & TextBox7.Text & "','" & Now() & "')"
        Dim dbcomm = New OleDbCommand(sql, dbconn)
        Dim dbread = dbcomm.ExecuteReader()
        'customers.DataSource = dbread
        'customers.DataBind()
        dbread.Close()
        dbconn.Close()

        dbconn.Open()
        Dim sqlin = "insert into patient_fee(patient_id,fee,fee_date) values ('" & patient_id & "','" & TextBox8.Text & "','" & Now() & "')"
        Dim dbcommin = New OleDbCommand(sqlin, dbconn)
        Dim dbreadin = dbcommin.ExecuteReader()
        dbreadin.Close()
        dbconn.Close()
        ' Response.Write(TextBox11.Text)
        'Response.End()


        dbconn.Open()
        Dim sqlex = "insert into patient_ex_details(patient_id,revisit_date,visit_status,revisit_complain,revisit_rx_treatment) values ('" & patient_id & "','" & CDate(TextBox11.Text) & "',No,'','')"
        Dim dbcommex = New OleDbCommand(sqlex, dbconn)
        Dim dbreadex = dbcommex.ExecuteReader()
        dbreadex.Close()
        dbconn.Close()

        dbconn.Open()
        Dim sqlupdate As String
        If (patient_id <> 1) Then

            sqlupdate = "update patient_id set patient_id = '" & patient_id & "'"
        Else
            sqlupdate = "insert into patient_id(patient_id) values ('" & patient_id & "')"
        End If
        Dim dbcommup = New OleDbCommand(sqlupdate, dbconn)
        Dim dbreadup = dbcommup.ExecuteReader()
        dbreadup.Close()
        dbconn.Close()
        Response.Redirect("Default.aspx?ty=t")
    End Sub


End Class
