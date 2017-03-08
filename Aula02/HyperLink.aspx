<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Hyperlink.aspx.cs" Inherits="HyperLink" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Usando Hyperlink</h1>
    </div>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="fiap.com.br" Target="_blank">FIAP</asp:HyperLink>
        <br />
        <br />
        <a href="CheckBox.aspx">CheckBox.aspx</a><br />
        <br />
        <asp:HyperLink ID="HyperLink2" runat="server" ImageUrl="~/images/scala.png" NavigateUrl="http://scala.com.br"></asp:HyperLink>
        <br />
        <br />
        <asp:Button ID="btnMensagem" runat="server" OnClientClick="alert(&quot;Olá Mundo&quot;)" Text="Mensagem" />
        <br />
        <br />
        <asp:ImageButton ID="ImageButton1" runat="server" Height="153px" ImageUrl="~/images/scala.png" OnClick="ImageButton1_Click" OnClientClick="alert(&quot;Você será redirecionado&quot;)" Width="150px" />
    </form>
</body>
</html>
