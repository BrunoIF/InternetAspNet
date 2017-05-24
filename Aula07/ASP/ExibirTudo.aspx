<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ExibirTudo.aspx.cs" Inherits="ExibirTudo" %>

<!DOCTYPE html>
<html lang="pt-br">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/bootstrap.css" rel="stylesheet" />
    <title>Todos os produtos</title>
    <style>
        img{
            width: 100px; height: 150px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Lista de Produtos</h1>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:3EMIAConnectionString %>" SelectCommand="SELECT * FROM [tb_produtos_02]"></asp:SqlDataSource>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Cod_Produto" DataSourceID="SqlDataSource1" CssClass="table table-bordered table-hover table-responsive table-striped table-condensed">
                <Columns>
                    <asp:BoundField DataField="Cod_Produto" HeaderText="Código" InsertVisible="False" ReadOnly="True" SortExpression="Cod_Produto" />
                    <asp:BoundField DataField="Nome_Produto" HeaderText="Nome do Produto" SortExpression="Nome_Produto" />
                    <asp:BoundField DataField="Descricao_Produto" HeaderText="Descrição" SortExpression="Descricao_Produto" />
                    <asp:BoundField DataField="Preco_Produto" HeaderText="Preço" SortExpression="Preco_Produto" />
                    <asp:BoundField DataField="Quantidade_Produto" HeaderText="Quantidade" SortExpression="Quantidade_Produto" />
                    <asp:BoundField DataField="Categoria_Produto" HeaderText="Categoria Produto" SortExpression="Categoria_Produto" />
                    <asp:ImageField DataImageUrlField="Foto_Produto" HeaderText="Foto do Produto">
                    </asp:ImageField>
                </Columns>
            </asp:GridView>
        </div>
    </form>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
