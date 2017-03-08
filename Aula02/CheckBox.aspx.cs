using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;

public partial class CheckBox : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnComidinhas_Click(object sender, EventArgs e)
    {
        // StringBuilder -> Manipulação de um Array de texto
        StringBuilder sbComidinhas = new StringBuilder();
        if (ckbPizza.Checked)
        {
            // .Append -> Inserir no objeto
            sbComidinhas.Append(ckbPizza.Text);
        }

        if (ckbCoxinha.Checked)
        {
            sbComidinhas.Append(" " + ckbCoxinha.Text);
        }

        if (ckbLasanha.Checked)
        {
            sbComidinhas.Append(" " + ckbLasanha.Text);
        }

        if (ckbPastel.Checked)
        {
            sbComidinhas.Append(" " + ckbPastel.Text);
        }
        // Response.Write() -> Retorna na página HTML, pode ser código JS em tag <script>
        Response.Write("Comidinhas Selecionadas: " + sbComidinhas);
    }

    protected void cblGames_SelectedIndexChanged(object sender, EventArgs e)
    {
        // Colocar AutoPostBack nas propriedades do CheckBoxList
        // Instanciando um objeto para armazenar os games selecionados
        StringBuilder sbGames = new StringBuilder();

        // Criar o laço para percorrer a mina coleção de itens localizados no cblGames
        // **Cai na Prova**
        // foreach(Tipo NomeDaVariável in Coleção)
        foreach (ListItem item in cblGames.Items)
        {
            if (item.Selected)
            {
                sbGames.Append("" + item.Text);
            }
        }
        lblGames.Text = "Seus games escolhidos foram: " + sbGames.ToString();
    }
}