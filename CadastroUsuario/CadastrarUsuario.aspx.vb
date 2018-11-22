Imports MySql.Data.MySqlClient

Partial Class CadastrarUsuario
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnCadastrar_Click(sender As Object, e As EventArgs) Handles btnCadastrar.Click

        If txtNome.Text = "" Then
            txtNome.Focus()
            lblInf.Visible = True
            lblInf.Text = "Preencha Nome"
            Exit Sub
        End If

        If txtCPF.Text = "" Then
            txtCPF.Focus()
            lblInf.Visible = True
            lblInf.Text = "Preencha CPF"
            Exit Sub
        End If

        If txtEmail.Text = "" Then
            txtEmail.Focus()
            lblInf.Visible = True
            lblInf.Text = "Preencha Email"
            Exit Sub
        End If

        If txtLogin.Text = "" Then
            txtLogin.Focus()
            lblInf.Visible = True
            lblInf.Text = "Preencha Login"
            Exit Sub
        End If

        If txtSenha.Text = "" Then
            txtSenha.Focus()
            lblInf.Visible = True
            lblInf.Text = "Preencha Senha"
            Exit Sub
        End If

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
        strSQL2 = "Insert Into cadastrousuario.usuario (Nome, CPF, Email, Login,senha) values ('" + txtNome.Text + "', '" + txtCPF.Text + "', '" + txtEmail.Text + "', '" + txtLogin.Text + "', '" + txtSenha.Text + "')"
        Dim myCommand2 As New MySqlCommand()
        myCommand2.Connection = conexaoMySQL
        myCommand2.CommandText = strSQL2

        'Iniciar Query
        myAdapter.SelectCommand = myCommand2
        Dim myData2 As MySqlDataReader

        myData2 = myCommand2.ExecuteReader()




        'While myData2.Read()

        '    If myData2.HasRows <> 0 Then

        '        Session("id") = myData2.Item(1)

        '        Response.Redirect("Menu.aspx")

        '    Else

        lblInf.Visible = True
        lblInf.Text = "Cadastrado"

        '    End If

        'End While

        myData2.Close()

    End Sub
    Protected Sub btnLimpar_Click(sender As Object, e As EventArgs) Handles btnLimpar.Click
        Response.Redirect("CadastrarUsuario.aspx")
    End Sub
End Class
