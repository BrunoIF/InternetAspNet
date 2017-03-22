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

    protected void btnMulti1_Click(object sender, EventArgs e)
    {
        // Botão para ir para a view 1
        // Vai para a view com index 1
        MultiView1.ActiveViewIndex = 1;
    }

    protected void btnMulti2Anterior_Click(object sender, EventArgs e)
    {
        // Botão para voltar para a view 0
        MultiView1.ActiveViewIndex = 0;
    }

    protected void btnMulti2Proximo_Click(object sender, EventArgs e)
    {
        // Botão para ir para a view 2
        MultiView1.ActiveViewIndex = 2;
    }

    protected void btnMulti3Anterior_Click(object sender, EventArgs e)
    {
        // Botão para voltar para a view 2
        MultiView1.ActiveViewIndex = 1;
    }

    protected void btnMulti3Inicio_Click(object sender, EventArgs e)
    {
        // Botão para voltar para a view 0
        MultiView1.ActiveViewIndex = 0;
    }

    protected void ddlProduto_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblValorUnitario.Text = "";
        double valor = Convert.ToDouble(ddlProduto.SelectedValue);
        string nomeProduto = ddlProduto.SelectedItem.Text;
        if (valor == -1)
        {
            Response.Write("<script>alert('Favor selecionar um item')</script>");
            ddlProduto.Focus();
        }
        else
        {
            lblValorUnitario.Text = valor.ToString("c2");
        }
    }
}