<%@ Page Language="C#" AutoEventWireup="true" CodeFile="BuscaCep.aspx.cs" Inherits="BuscaCep" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h3>Buscar CEP</h3>
        Informe o CEP:
        <asp:TextBox ID="txtCep" runat="server"></asp:TextBox>
        &nbsp;<asp:Button ID="btnCep" runat="server" Text="Buscar CEP" OnClick="btnCep_Click" />
        <br />
        <br />
        Logradouro: <asp:TextBox ID="txtLogradouro" runat="server"></asp:TextBox>
&nbsp; Número:
        <asp:TextBox ID="txtNumero" runat="server"></asp:TextBox>
&nbsp;Complemento:
        <asp:TextBox ID="txtComplemento" runat="server"></asp:TextBox>
        <br />
        <br />
        Bairro: <asp:TextBox ID="txtBairro" runat="server"></asp:TextBox>
        <br />
        <br />
        Cidade:
        <asp:TextBox ID="txtCidade" runat="server"></asp:TextBox>
&nbsp;Estado:
        <asp:TextBox ID="txtUF" runat="server"></asp:TextBox>
    
    </div>
    </form>
</body>
</html>
