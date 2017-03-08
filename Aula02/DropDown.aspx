<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DropDown.aspx.cs" Inherits="DropDown" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>DropDownList</h1>
        <p>&nbsp;</p>
        <p>
            <asp:DropDownList ID="ddlGames" runat="server">
                <asp:ListItem Value="-1">Selecione seu game</asp:ListItem>
                <asp:ListItem Value="1">God of War</asp:ListItem>
                <asp:ListItem Value="2">Overwatch</asp:ListItem>
                <asp:ListItem Value="3">The Last of Us</asp:ListItem>
                <asp:ListItem Value="4">Horizon: Zero Dawn</asp:ListItem>
                <asp:ListItem Value="5">Palmirinha Games</asp:ListItem>
            </asp:DropDownList>
            <asp:Button ID="btnGames" runat="server" OnClick="btnGames_Click" Text="Selecionar" />
        </p>
        <p>
            <asp:Label ID="lblGame" runat="server"></asp:Label>
        </p>
    </div>
    </form>
</body>
</html>
