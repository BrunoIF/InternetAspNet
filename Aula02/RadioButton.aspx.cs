using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RadioButton : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnBandas_Click(object sender, EventArgs e)
    {
        if (rdbBanda1.Checked)
        {
            Response.Write("Na minha opinião, os Beatles são demais");
        }
        else if (rdbBanda2.Checked)
        {
            Response.Write("Muita viagem");
        }
        else if (rdbBanda3.Checked)
        {
            Response.Write("Deus salve a rainha");
        }
    }

    protected void rblCarnaval_SelectedIndexChanged(object sender, EventArgs e)
    {
        // .SelectedValue -> Valor Selecionado
        if (rblCarnaval.SelectedValue == "1")
        {
            lblCarnaval.Text = "É uma droga...fim de vida inteligente";
        }
        else if (rblCarnaval.SelectedValue == "2")
        {
            lblCarnaval.Text = "Ivete, funcionária da Globo";
        }
        else if (rblCarnaval.SelectedValue == "3")
        {
            lblCarnaval.Text = "Ludmilla, só a Dani gosta";
        }
        else if (rblCarnaval.SelectedValue == "4")
        {
            lblCarnaval.Text = "Ficar sem essa aula é como ficar sem chão";
        }
    }
}