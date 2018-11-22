<%@ Page Language="VB" AutoEventWireup="false" CodeFile="CadastrarUsuario.aspx.vb" Inherits="CadastrarUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cadastro Usuario</title>
     <link href="~/Styles/Site.css" rel="stylesheet" type="text/css" />
     <script type="text/javascript">
        function validate() {   //nome
            //if (document.getElementById("<%=txtNome.ClientID%>").value == "") {
                alert("Informe o Login.");
                document.getElementById("<%=txtNome.ClientID%>").focus();
                return false;
           
            }

             if (document.getElementById("<%=txtCPF.ClientID%>").value == "") {
                alert("Informe o CPF.");
                document.getElementById("<%=txtCPF.ClientID%>").focus();
                return false;
            }

                if (document.getElementById("<%=txtEmail.ClientID%>").value == "") {
                alert("Informe o Email.");
                document.getElementById("<%=txtEmail.ClientID%>").focus();
                return false;
            }

                if (document.getElementById("<%=txtLogin.ClientID%>").value == "") {
                alert("Informe o Login.");
                document.getElementById("<%=txtLogin.ClientID%>").focus();
                return false;
            }

             if (document.getElementById("<%=txtSenha.ClientID%>").value == "") {
                alert("Informe a Senha.");
                document.getElementById("<%=txtSenha.ClientID%>").focus();
                return false;
            }

         //alert("Cadastrado com Sucesso");
            return true;
        }
</script>  
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
     <table>
            <tr><td colspan="2" class="style2" > 
                    
                     <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Menu.aspx">Retornar</asp:HyperLink>
                <br />
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Cadastrar Usuario"></asp:Label>
                </td>
            </tr>
            <tr><td>Nome</td>
                <td><asp:TextBox ID="txtNome" runat="server" Width="211px"></asp:TextBox></td>
            </tr>
            <tr>
                <td>CPF</td>
                <td><asp:TextBox ID="txtCPF" runat="server" Width="211px"></asp:TextBox></td>
            </tr>
          <tr>
                <td>Email</td>
                <td><asp:TextBox ID="txtEmail" runat="server" Width="211px"></asp:TextBox></td>
            </tr>
          <tr>
                <td>Login</td>
                <td><asp:TextBox ID="txtLogin" runat="server" Width="211px"></asp:TextBox></td>
            </tr>
          <tr>
                <td>Senha</td>
                <td><asp:TextBox ID="txtSenha" runat="server" Width="211px"></asp:TextBox></td>
            </tr>

          <tr>
                <td></td>
                <td>
                    <asp:Label ID="lblInf" runat="server"></asp:Label>
                   </td>
            </tr>

          <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="btnCadastrar" runat="server" OnClientClick=" return validate()" Text="Cadastrar" />
                    <asp:Button ID="btnLimpar" runat="server" Text="Limpar" />
                </td>
            </tr>
         
           </table>
    </div>
    </form>
</body>
</html>

