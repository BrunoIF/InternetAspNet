using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class BuscaCep : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnCep_Click(object sender, EventArgs e)
    {
        try
        {
            string rua;
            DataSet ds = new DataSet();
            string endereco = "http://cep.republicavirtual.com.br/web_cep.php?cep=@cep&formato=xml".Replace("@cep",txtCep.Text);
            ds.ReadXml(endereco);
            rua = ds.Tables[0].Rows[0]["logradouro"].ToString();

            if (rua == "")
            {
                Response.Write("<script>alert('CEP Inválido.')</script>");
                txtCep.Focus();
            }
            else
            {
                txtLogradouro.Text = ds.Tables[0].Rows[0]["tipo_logradouro"].ToString() + rua;
                txtBairro.Text = ds.Tables[0].Rows[0]["bairro"].ToString();
                txtCidade.Text = ds.Tables[0].Rows[0]["cidade"].ToString();
                txtUF.Text = ds.Tables[0].Rows[0]["uf"].ToString();
                txtNumero.Focus();
            }
        }
        catch (Exception)
        {
            Response.Write("<script>alert('Serviço Indisponível...tente novamente')</script>");
        }
    }
}