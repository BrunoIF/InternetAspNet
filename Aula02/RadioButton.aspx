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
        <asp:RadioButton ID="rdbBanda1" runat="server" Text="Beatles" />
        <asp:RadioButton ID="rdbBanda2" runat="server" Text="Pink Floyd" />
        <asp:RadioButton ID="rdbBanda3" runat="server" Text="Queen" />
        <asp:Button ID="btnBandas" runat="server" Text="Button" />
    </form>
</body>
</html>
