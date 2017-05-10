<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Cadastro.aspx.cs" Inherits="Cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/css/bootstrap.css" rel="stylesheet" />
    <link href="Content/css/meu.css" rel="stylesheet" />
</head>
<body>
    <div class="layer">
        <form id="form1" runat="server">

            <div class="form-container">
                <div class="title-container">
                    <h3>Cadastro de Usuário</h3>
                    <div class="arrow"></div>
                </div>
                <div class="input-container">
                    <div class="form-group">
                        <label>Nome de Usuário:</label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Campo Vazio." ControlToValidate="txtUsuario" Display="Dynamic"></asp:RequiredFieldValidator>
                        &nbsp;&nbsp;<asp:TextBox ID="txtUsuario" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Senha:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Campo Vazio." ControlToValidate="txtSenha" Display="Dynamic"></asp:RequiredFieldValidator>
                        &nbsp;<asp:TextBox ID="txtSenha" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Email:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Campo Vazio." ControlToValidate="txtEmail" Display="Dynamic"></asp:RequiredFieldValidator>
                        &nbsp;<asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Confirmar Email:</label><asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Campo Vazio." ControlToValidate="txtConfirmaEmail" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtConfirmaEmail" ErrorMessage="Email inválido."></asp:RegularExpressionValidator>
                        <asp:TextBox ID="txtConfirmaEmail" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Nome:</label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Campo Vazio." ControlToValidate="txtNome" Display="Dynamic"></asp:RequiredFieldValidator>
                        &nbsp;<asp:TextBox ID="txtNome" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label>Departamento:</label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Selecione uma opção" ControlToValidate="ddlDepto" Display="Dynamic" InitialValue="Selecione"></asp:RequiredFieldValidator>
                        &nbsp;<asp:DropDownList ID="ddlDepto" runat="server" CssClass="form-control">
                            <asp:ListItem>Selecione</asp:ListItem>
                            <asp:ListItem>Administração</asp:ListItem>
                            <asp:ListItem>Diretoria</asp:ListItem>
                            <asp:ListItem>Financeiro</asp:ListItem>
                            <asp:ListItem>Gerência</asp:ListItem>
                            <asp:ListItem>RH</asp:ListItem>
                            <asp:ListItem>TI</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <asp:Button ID="btnSalvar" runat="server" CssClass="btn btn-primary" Text="Cadastrar" OnClick="btnSalvar_Click" />
                </div>
            </div>
        </form>
    </div>
</body>
</html>
