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
        txtValor1.Focus();
    }

    protected void btnCalcular_Click(object sender, EventArgs e)
    {        
        try
        {
            // Recuperar os dados e armazenar em variáveis
            double v1 = Convert.ToDouble(txtValor1.Text);
            double v2 = Convert.ToDouble(txtValor2.Text);

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
        catch (Exception)
        {
            Response.Write("<script>alert('Algum erro ocorreu - Verifique os dados inseridos');</script>");
            txtValor1.Focus();
        }
        

    }
}