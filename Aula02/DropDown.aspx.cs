using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DropDown : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnGames_Click(object sender, EventArgs e)
    {
        string valor, jogo;
        jogo = ddlGames.SelectedItem.Text;

        // **CAI NA PROVA**
        // Pegar o valor (Value)
        valor = ddlGames.SelectedValue;
        if (valor == "-1")
        {
            Response.Write("<script>alert('Opção Inválida')</script>");
        }
        else
        {
            lblGame.Text = "Game selecionado: " + jogo;
        }

    }
}