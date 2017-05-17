<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
    .mensagem{
        font-family: Calibri;
        color: #6c0909;
        font-size: 16px;
        font-weight: 900;
    }
    </style>
</head> 
<body>
    <form id="form1" runat="server">
    <div>
    <h2>Página de Login</h2>
    </div>

        <asp:Label ID="lblMensagem" runat="server" CssClass="mensagem"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Usuário: "></asp:Label>
        <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Senha: "></asp:Label>
        <asp:TextBox ID="txtSenha" runat="server" TextMode="Password"></asp:TextBox>
&nbsp;<br />
        <br />
        <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Cadastro.aspx">Novo Usuário</asp:HyperLink>

    </form>
</body>
</html>
