using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Site
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblMensagem.Visible = false;
        }

        protected void btnAcessar_Click(object sender, EventArgs e)
        {
            string opcao = ddlMenu.SelectedValue;
            switch (opcao)
            {
                case "1":
                    Response.Redirect("Cadastrar.aspx");
                    break;
                case "2":
                    Response.Redirect("Consultar.aspx");
                    break;
                case "3":
                    Response.Redirect("Atualizar.aspx");
                    break;
                default:
                    lblMensagem.Visible = true;
                    lblMensagem.Text = "Por favor selecione uma opção válida";
                    break;
            }
        }
    }
}