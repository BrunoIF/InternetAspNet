<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h2>Usando Asp.Net</h2>
        <h3>Entrada de valores:</h3>
        <p>&nbsp;</p>

    </div>
        <p>
            Valor 1:
            <asp:TextBox ID="txtValor1" runat="server"></asp:TextBox>
        </p>
        <p>
            Valor 2:
            <asp:TextBox ID="txtValor2" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="btnCalcular" runat="server" OnClick="btnCalcular_Click" Text="Calcular" />
        </p>
        <p>
            Resultado da soma: <asp:Label ID="lblSoma" runat="server"></asp:Label>
        </p>
        <p>
            Resultado da subtração:
            <asp:Label ID="lblSubtracao" runat="server"></asp:Label>
        </p>
        <p>
            Resultado da multiplicação:
            <asp:Label ID="lblMultiplicacao" runat="server"></asp:Label>
        </p>
        <p>
            Resultado da divisão:
            <asp:Label ID="lblDivisao" runat="server"></asp:Label>
        </p>
        <p>
            Resultado do módulo:
            <asp:Label ID="lblModulo" runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>
