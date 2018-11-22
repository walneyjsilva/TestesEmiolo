<%@ Page Language="VB" AutoEventWireup="false" CodeFile="LoginAcesso.aspx.vb" Inherits="LoginAcesso" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
     <link href="~/Styles/Site.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        function validate() {   //nome
            if (document.getElementById("<%=txtNome.ClientID%>").value == "") {
                alert("Informe o Login.");
                document.getElementById("<%=txtNome.ClientID%>").focus();
                return false;
            }
            //Alfanumerico e espaço(' '),nao aceita numeros e nem caracteres 
            var ck_nome = /^[A-Za-z ]{5,45}$/;
            var tempNome = document.getElementById("<%=txtNome.ClientID%>").value;
            var matchNome = tempNome.match(ck_nome);
            if (matchNome == null) {
                alert("Login inválido, deve conter entre 5 a 45 sendo Alfanumerico ");
                document.getElementById("<%=txtNome.ClientID %>").focus();
                return false;
            }
            
            if (document.getElementById("<%=txtSenha.ClientID%>").value == "") {
                alert("Informe a Senha.");
                document.getElementById("<%=txtSenha.ClientID%>").focus();
                return false;
            }

//            alert("Acesso Liberado");
            return true;
        }
</script>  

</head>
<body>
   <form id="form1" runat="server">
     <div class="page">
    <div align="center">
            <table>
            <tr><td colspan="2" class="style2" align="center">Cadastro Usuario  - Login </td>
            </tr>
            <tr><td>Login</td>
                <td><asp:TextBox ID="txtNome" runat="server" Width="211px"></asp:TextBox></td>
            </tr>
            <tr>
                <td>Senha</td>
                <td><asp:TextBox ID="txtSenha" runat="server" Width="211px" TextMode="Password"></asp:TextBox></td>
            </tr>
           </table>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
      <asp:Button ID="btnSubmit" OnClientClick=" return validate()" runat="server" 
                Text="Entrar" Width="176px" />
     </div>
      </div>
    </form>
</body>
</html>