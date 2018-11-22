<%@ Page Language="VB" AutoEventWireup="false" CodeFile="UsuarioCadastrados.aspx.vb" Inherits="UsuarioCadastrados" %>
<%@ Import namespace="MySql.Data.MySqlClient" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Usuarios Cadastrados</title>
    <link href="~/Styles/Site.css" rel="stylesheet" type="text/css" />


</head>
<body>
    <form id="form1" runat="server">
    <div align="center">
    
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Menu.aspx">Retornar</asp:HyperLink>
        <br />
    
    <br />

    <%
        'Dim estado As String

        Dim conexaoMySQL As MySqlConnection
        Dim myAdapter As New MySqlDataAdapter
        Dim strSQL As String

        'Conexao banco de dados
        conexaoMySQL = New MySqlConnection("server=localhost; user id=root ; password=12345; database=cadastrousuario;")

        Try
            conexaoMySQL.Open()
        Catch myerror As MySqlException
            MsgBox("Erro de conexao com o BD")
        End Try
        strSQL = "select * from cadastrousuario.usuario order by login"

        Dim myCommand As New MySqlCommand()
        myCommand.Connection = conexaoMySQL
        myCommand.CommandText = strSQL

        'Iniciar Query
        myAdapter.SelectCommand = myCommand
        Dim myData As MySqlDataReader

        myData = myCommand.ExecuteReader()
        Gridview1.DataSource = myData
        Gridview1.DataBind()

        'While myData.Read()
        '    estado = myData.Item(0)
        'End While



        myData.Close()


            %>

<td>Usuarios Cadastrados</td>
<asp:gridview ID="Gridview1" runat="server">
<SelectedRowStyle HorizontalAlign="Center" VerticalAlign="Top" /></asp:gridview>


       
     

    </div>
    </form>
</body>
</html>

