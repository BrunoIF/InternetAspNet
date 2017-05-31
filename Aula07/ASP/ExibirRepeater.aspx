<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ExibirRepeater.aspx.cs" Inherits="ExibirTudo" %>

<!DOCTYPE html>
<html lang="pt-br">
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/bootstrap.css" rel="stylesheet" />
    <title>Todos os produtos</title>
    <style>
        img {
            width: 100px;
            height: 150px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Relação dos Produtos em nossa loja</h2>
            <div class="row">
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <div class="col-xs-12 col-sm-6 col-md-4">
                            <div class="thumbnail">
                                <div class="caption">
                                    <h3>
                                        <asp:Label ID="lblNome" runat="server" Text='<%#Eval("Nome_Produto").ToString()%>'></asp:Label>
                                    </h3>
                                    <p>
                                        <asp:Label ID="lblDescricao" runat="server" Text='<%#Eval("Descricao_Produto").ToString()%>'></asp:Label>
                                    </p>
                                    <p>
                                        <asp:Image ID="fotoProduto" runat="server" ImageUrl='<%#Eval("Foto_Produto")%>' CssClass="img-responsive"/>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:3EMIAConnectionString %>" SelectCommand="SELECT * FROM [tb_produtos_02]"></asp:SqlDataSource>
    </form>
    <script src="js/bootstrap.min.js"></script>
</body>
</html>
