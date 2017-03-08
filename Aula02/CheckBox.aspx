<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CheckBox.aspx.cs" Inherits="CheckBox" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h3>Comidinhas Gostosas</h3>


        <asp:CheckBox ID="ckbPizza" runat="server" Text="Pizza" />
&nbsp;<asp:CheckBox ID="ckbCoxinha" runat="server" Text="Coxinha" />
&nbsp;<asp:CheckBox ID="ckbLasanha" runat="server" Text="Lasanha" />
&nbsp;<asp:CheckBox ID="ckbPastel" runat="server" Text="Pastel" />
&nbsp;<asp:Button ID="btnComidinhas" runat="server" OnClick="btnComidinhas_Click" Text="Mostrar Comidas" />


        <br />
        <br />
        <h3>Games Lindinhos</h3>
        <asp:CheckBoxList ID="cblGames" runat="server" AutoPostBack="True" OnSelectedIndexChanged="cblGames_SelectedIndexChanged" RepeatDirection="Horizontal">
            <asp:ListItem>God of War</asp:ListItem>
            <asp:ListItem>FIFA17</asp:ListItem>
            <asp:ListItem>Black Ops</asp:ListItem>
            <asp:ListItem>Last of Us</asp:ListItem>
            <asp:ListItem>Horizon: Zero Dawn</asp:ListItem>
        </asp:CheckBoxList>


        <br />
        <asp:Label ID="lblGames" runat="server"></asp:Label>


    </div>
    </form>
</body>
</html>
