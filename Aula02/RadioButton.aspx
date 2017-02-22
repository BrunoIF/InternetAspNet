<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RadioButton.aspx.cs" Inherits="RadioButton" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h3>Qual é a melhor banda de rock de todos os tempos?</h3>
    </div>
        <asp:RadioButton ID="rdbBanda1" runat="server" GroupName="Bandas" Text="Beatles" />
        <asp:RadioButton ID="rdbBanda2" runat="server" GroupName="Bandas" Text="Pink Floyd" />
        <asp:RadioButton ID="rdbBanda3" runat="server" GroupName="Bandas" Text="Queen" />
        <asp:Button ID="btnBandas" runat="server" OnClick="btnBandas_Click" Text="Conferir" />
    <h3>Piores coisas do carnaval<asp:RadioButtonList ID="rblCarnaval" runat="server" AutoPostBack="True" RepeatDirection="Horizontal">
        <asp:ListItem Value="1">Nelson Rubens</asp:ListItem>
        <asp:ListItem Value="2">Ivete Sangalo</asp:ListItem>
        <asp:ListItem Value="3">Ludmilla</asp:ListItem>
        <asp:ListItem Value="4">Ficar sem aula do Israel</asp:ListItem>
        </asp:RadioButtonList>
        </h3>
        <p>
            <asp:Label ID="lblCarnaval" runat="server" Text="Label"></asp:Label>
        </p>
    </form>
</body>
</html>
