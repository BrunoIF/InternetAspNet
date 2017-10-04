<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastrar.aspx.cs" Inherits="Site.Cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Projeto CRUD - Cadastrar</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <br />
            <div class="row">
                <h3 class="well">Cadastro de Clientes</h3>
                <div class="col-md-8">
                    <label>Nome da Pessoa</label>
                    <asp:TextBox ID="TxtNome" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-4"> <br /><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Campo Vazio" ControlToValidate="txtNome" CssClass="alert alert-danger"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="row">
                <div class="col-md-8">
                    <label>Endereço da Pessoa</label>
                    <asp:TextBox ID="txtEndereco" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-4"> <br /><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Campo Vazio" ControlToValidate="txtEndereco" CssClass="alert alert-danger"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="row">
                <div class="col-md-8">
                    <label>Email da Pessoa</label>
                    <asp:TextBox ID="TxtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-4"> <br /><br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Campo Vazio" ControlToValidate="txtEmail" CssClass="alert alert-danger"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="row"> <br /><br />
                <div class="col-md-12">
                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-warning btn-lg" NavigateUrl="index.aspx">Voltar</asp:HyperLink>
                    <asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar Pessoa" CssClass="btn btn-info btn-lg" />
                </div>
            </div>

        </div>



    </form>
    <script src="scripts/jquery-1.9.1.min.js"></script>
    <script src="scripts/bootstrap.min.js"></script>
</body>
</html>
