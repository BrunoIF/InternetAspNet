<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Usando Multiview</h1>
    </div>
        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
            <asp:View ID="View1" runat="server">
                Dados do cliente:<br />
                <br />
                Nome:
                <asp:TextBox ID="txtNome" runat="server"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNome" ErrorMessage="Campo vazio." Font-Bold="True" Font-Names="Arial" Font-Size="15pt" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
                Endereço Completo:
                <asp:TextBox ID="txtEndereco" runat="server"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEndereco" ErrorMessage="Campo vazio." Font-Bold="True" Font-Names="Arial" Font-Size="15pt" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
                Email:
                <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Campo vazio." Font-Bold="True" Font-Names="Arial" Font-Size="15pt" ForeColor="Red"></asp:RequiredFieldValidator>
&nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="Email inválido." Font-Bold="True" Font-Names="Arial" Font-Size="15pt" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                <br />
                <br />
                Confirmar Email:
                <asp:TextBox ID="txtConfirmaEmail" runat="server"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtConfirmaEmail" Display="Dynamic" ErrorMessage="Campo vazio." Font-Bold="True" Font-Names="Arial" Font-Size="15pt" ForeColor="Red"></asp:RequiredFieldValidator>
                &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtEmail" ControlToValidate="txtConfirmaEmail" ErrorMessage="Emails diferentes." Font-Bold="True" Font-Names="Arial" Font-Size="15pt" ForeColor="Red"></asp:CompareValidator>
                <br />
                <br />
                <asp:Button ID="btnMulti1" runat="server" OnClick="btnMulti1_Click" Text="Próximo &gt;&gt;" />
            </asp:View>
            <asp:View ID="View2" runat="server">
                Dados do produto:<br />
                <br />
                Nome do Produto:
                <asp:DropDownList ID="ddlProduto" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlProduto_SelectedIndexChanged">
                    <asp:ListItem Value="-1">Selecione um item</asp:ListItem>
                    <asp:ListItem Value="2300">Celular</asp:ListItem>
                    <asp:ListItem Value="1900">Tablet</asp:ListItem>
                    <asp:ListItem Value="2100">PlayStation 4</asp:ListItem>
                    <asp:ListItem Value="5000">Notebook</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                Quantidade:
                <asp:DropDownList ID="ddlQtdProduto" runat="server">
                    <asp:ListItem Value="-1">Selecione uma quantidade</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                    <asp:ListItem>4</asp:ListItem>
                    <asp:ListItem>5</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
                Valor Unitário:
                <asp:Label ID="lblValorUnitario" runat="server"></asp:Label>
                <br />
                <br />
                <asp:Button ID="btnMulti2Anterior" runat="server" OnClick="btnMulti2Anterior_Click" Text="&lt;&lt; Anterior" />
                <asp:Button ID="btnMulti2Proximo" runat="server" OnClick="btnMulti2Proximo_Click" Text="Próximo &gt;&gt;" />
            </asp:View>
            <asp:View ID="View3" runat="server">
                Dados da compra:<br />
                <br />
                Nome do Cliente:
                <asp:Label ID="lblNomeCliente" runat="server"></asp:Label>
                <br />
                <br />
                Produto Comprado:
                <asp:Label ID="lblNomeProduto" runat="server"></asp:Label>
                <br />
                <br />
                Valor a Pagar:
                <asp:Label ID="lblValorPagar" runat="server"></asp:Label>
                <br />
                <br />
                <asp:Button ID="btnMulti3Anterior" runat="server" OnClick="btnMulti3Anterior_Click" Text="&lt;&lt; Anterior" />
                <asp:Button ID="btnMulti3Inicio" runat="server" OnClick="btnMulti3Inicio_Click" Text="Novo Produto" />
                <asp:Button ID="btnImprimir" runat="server" Text="Imprimir Pedido" />
            </asp:View>
            <br />
            <br />
        </asp:MultiView>
    </form>
</body>
</html>
