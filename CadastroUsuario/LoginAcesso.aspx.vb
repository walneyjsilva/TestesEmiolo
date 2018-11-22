Imports MySql.Data.MySqlClient

Partial Class LoginAcesso
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnSubmit_Click(sender As Object, e As EventArgs) Handles btnSubmit.Click
        Dim conexaoMySQL As MySqlConnection
        Dim myAdapter As New MySqlDataAdapter


        'Conexao banco de dados
        conexaoMySQL = New MySqlConnection("server=localhost; user id=root ; password=12345; database=cadastrousuario;")

        Try
            conexaoMySQL.Open()
        Catch myerror As MySqlException
            MsgBox("Erro de conexao com o BD")
        End Try

        Dim strSQL2 As String
        strSQL2 = "SELECT id, login FROM cadastrousuario.usuario WHERE login='" + txtNome.Text + "' AND senha='" + txtSenha.Text + "'"
        Dim myCommand2 As New MySqlCommand()
        myCommand2.Connection = conexaoMySQL
        myCommand2.CommandText = strSQL2

        'Iniciar Query
        myAdapter.SelectCommand = myCommand2
        Dim myData2 As MySqlDataReader

        myData2 = myCommand2.ExecuteReader()

        While myData2.Read()

            If myData2.HasRows <> 0 Then

                Session("id") = myData2.Item(1)

                Response.Redirect("Menu.aspx")

            Else

                Label1.Visible = True
                Label1.Text = "Login ou senha inválidos! Tente outra vez."

            End If

        End While

        myData2.Close()

    End Sub
End Class
