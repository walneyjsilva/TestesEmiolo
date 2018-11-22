<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Menu.aspx.vb" Inherits="Menu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="~/Styles/Site.css" rel="stylesheet" type="text/css" />
      
</head>
<body>
    <form id="form1" runat="server">
     <div class="page">
   <div>
                     <asp:Label ID="Label2" runat="server" Text="[Session:]"></asp:Label>
                     <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                     <br />
                     <br />
                     <asp:Menu ID="NavigationMenu" align="center" runat="server" CssClass="menu" EnableViewState="false" IncludeStyleBlock="false" Orientation="Horizontal">
                    <Items>
                        <asp:MenuItem NavigateUrl="~/CadastrarUsuario.aspx" Text="Cadastrar Usuario"/>
                        <asp:MenuItem NavigateUrl="~/UsuarioCadastrados.aspx" Text="Verificar Usuarios"/>
                         <asp:MenuItem NavigateUrl="~/LoginAcesso.aspx" Text="Sair"/>
                    </Items>
                </asp:Menu>  
                     <br />
    </div>
     </div>
    </form>
</body>
</html>
