using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnCalcular_Click(object sender, EventArgs e)
    {
        // Recuperar os dados e armazenar em variáveis
        double v1 = Convert.ToDouble(txtValor1);
        double v2 = double.Parse(txtValor1.Text);

        double resultado = 0;

        // Realizar cálculos
        resultado = v1 + v2;
        lblSoma.Text = resultado.ToString();

        resultado = v1 - v2;
        lblSubtracao.Text = resultado.ToString();

        resultado = v1 * v2;
        lblMultiplicacao.Text = resultado.ToString();

        resultado = v1 / v2;
        lblDivisao.Text = resultado.ToString();

        resultado = v1 % v2;
        lblModulo.Text = resultado.ToString();

    }
}