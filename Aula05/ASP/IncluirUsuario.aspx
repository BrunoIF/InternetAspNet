<%@ Page Language="C#" AutoEventWireup="true" CodeFile="IncluirUsuario.aspx.cs" Inherits="IncluirUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h2>Inserindo Novo Usuário</h2>
    </div>
        <p>
            Nome do Usuário:
            <asp:TextBox ID="txtNome" runat="server" MaxLength="50"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNome" ErrorMessage="Campo Obrigatório" Font-Bold="True" Font-Names="Calibri" Font-Size="16pt" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            Email do Usuário:
            <asp:TextBox ID="txtEmail" runat="server" MaxLength="50"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Campo Obrigatório" Font-Bold="True" Font-Names="Calibri" Font-Size="16pt" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            Telefone do Usuário:
            <asp:TextBox ID="txtTelefone" runat="server" MaxLength="20"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtTelefone" ErrorMessage="Campo Obrigatório" Font-Bold="True" Font-Names="Calibri" Font-Size="16pt" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p>
            <asp:Button ID="btnGravar" runat="server" OnClick="btnGravar_Click" Text="Gravar" />
        </p>
    </form>
</body>
</html>
