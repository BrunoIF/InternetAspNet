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
        StringBuilder sbComidinhas = new StringBuilder();
        if (ckbPizza.Checked)
        {
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

        Response.Write("Comidinhas Selecionadas: " + sbComidinhas);
    }
}