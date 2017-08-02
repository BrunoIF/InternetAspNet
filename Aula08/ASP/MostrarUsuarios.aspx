<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MostrarUsuarios.aspx.cs" Inherits="MostrarUsuarios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <asp:Button ID="btnSendEmail" runat="server" Text="Email" OnClick="btnSendEmail_Click" />
    </div>
    <script src="js/bootstrap.min.js"></script>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:3EMIAConnectionString %>" SelectCommand="SELECT * FROM [revisa00]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CssClass="table-responsive table-condensed table-bordered table-striped" DataKeyNames="Cod_Aluno" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Cod_Aluno" HeaderText="Cod_Aluno" InsertVisible="False" ReadOnly="True" SortExpression="Cod_Aluno" />
                <asp:BoundField DataField="Nome_Aluno" HeaderText="Nome_Aluno" SortExpression="Nome_Aluno" />
                <asp:BoundField DataField="Email_Aluno" HeaderText="Email_Aluno" SortExpression="Email_Aluno" />
            </Columns>
        </asp:GridView>
    </form>
    </body>
</html>
