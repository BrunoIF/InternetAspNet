using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["3EMIAConnectionString"].ConnectionString);
        con.Open();
        string strSQLBuscaUsuario = "select count(*) from tb_Login_02 where Usuario ='" + txtUsuario.Text + "'";
        SqlCommand VerificaUsuario = new SqlCommand(strSQLBuscaUsuario, con);
        int totalUsuario = Convert.ToInt16(VerificaUsuario.ExecuteScalar());

        if (totalUsuario == 1)
        {
            // Caso ele ache o usuário então faz essa parte
            string strSQLBuscaSenha = "select Senha from tb_Login_02 where Usuario ='" + txtUsuario.Text + "'";
            SqlCommand BuscaSenha = new SqlCommand(strSQLBuscaSenha, con);
            string senha = BuscaSenha.ExecuteScalar().ToString();
            con.Close();

            if (senha == txtSenha.Text)
            {
                // Senha existe - então o usuário também existe
                // Aqui ele ganha a Session
                // Esta Session será usada durante toda a aplicação do usuário
                Session["New"] = txtUsuario.Text;
                Response.Redirect("PaginaSegura.aspx");
            }
            else
            {
                // Entra aqui quando a senha não existe ou está errada
                lblMensagem.Text = "Senha inválida";
                txtSenha.Focus();
            }

        }
        else
        {
            // Caso o usuário esteja errado
            lblMensagem.Text = "Usuário Inválido";
            txtUsuario.Focus();
        }




    }
}