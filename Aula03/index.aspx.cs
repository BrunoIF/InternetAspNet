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

        // Recuperamos os dados das views e calculamos os valores
        string nomeCliente = txtNome.Text;
        string nomeProduto = ddlProduto.SelectedItem.Text;
        int quantidade = Convert.ToInt16(ddlQtdProduto.SelectedItem.Text);
        double valorUnitario = Convert.ToDouble(ddlProduto.SelectedValue);
        double valorTotal = quantidade * valorUnitario;

        // exibir na view 3 que é a 2, os dados
        lblValorPagar.Text = valorTotal.ToString("c2");
        lblNomeCliente.Text = nomeCliente;
        lblNomeProduto.Text = nomeProduto;
            

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

        // Limpar os Campos
        lblNomeProduto.Text = "";
        lblNomeCliente.Text = "";
        lblValorPagar.Text = "";
        lblValorUnitario.Text = "";
        txtEmail.Text = "";
        txtNome.Text = "";
        txtConfirmaEmail.Text = "";
        txtEndereco.Text = "";
        ddlProduto.SelectedIndex = 0;
        ddlQtdProduto.SelectedIndex = 0;
        txtNome.Focus();

    }

    protected void ddlProduto_SelectedIndexChanged(object sender, EventArgs e)
    {
        lblValorUnitario.Text = "";
        double valor = Convert.ToDouble(ddlProduto.SelectedValue);
        string nomeProduto = ddlProduto.SelectedItem.Text;
        if (valor == -1)
        {
            Response.Write("<script>alert('Favor selecionar um item.')</script>");
            ddlProduto.Focus();
        }
        else
        {
            lblValorUnitario.Text = valor.ToString("c2");
        }
    }

    protected void ddlQtdProduto_SelectedIndexChanged(object sender, EventArgs e)
    {
        int quantidade = Convert.ToInt16(ddlQtdProduto.SelectedIndex);
        if (quantidade == 0)
        {
            Response.Write("<script>alert('Favor selecionar uma quantidade.')</script>");
            btnMulti2Proximo.Enabled = false;
            btnMulti2Anterior.Enabled = false;
            lblValorUnitario.Text = "";
            ddlQtdProduto.Focus();
        }
        else
        {
            btnMulti2Proximo.Enabled = true;
            btnMulti2Anterior.Enabled = true;
        }
    }
}