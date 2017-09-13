<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Site.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Projeto CRUD</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container"><br />
            <div class="jumbotron">
                <h2>Projeto Crud</h2>
                <div class="row">
                    <div class="col-md-8">
                        <div class="form-group">
                            <asp:DropDownList ID="ddlMenu" runat="server" CssClass="form-control">
                                <asp:ListItem Value="0">Selecione uma opção</asp:ListItem>
                                <asp:ListItem Value="1">Cadastrar Pessoa</asp:ListItem>
                                <asp:ListItem Value="2">Consultar Pessoa</asp:ListItem>
                                <asp:ListItem Value="3">Alterar / Excluir</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <p>
                            <asp:Button ID="btnAcessar" runat="server" Text="Acessar Opção >>" CssClass="btn btn-info btn-lg" />
                        </p>
                        <h3>
                            <asp:Label ID="lblMensagem" runat="server" Text="" Visible="false" CssClass="label-danger"></asp:Label>
                        </h3>


                    </div>
                </div>
            </div>

        </div>
    </form>
</body>
</html>
