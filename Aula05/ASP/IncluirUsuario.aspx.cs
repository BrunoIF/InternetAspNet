using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
/* Carregar essas duas classes para conectar com o banco e executar comando SQL,
 * neste caso será um INSERT 
 * 
 * SQLClient -> Comandos SQL
 * Configuration -> Conectar com o banco
 */
using System.Data.SqlClient;
using System.Configuration;

public partial class IncluirUsuario : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnGravar_Click(object sender, EventArgs e)
    {
        // Criar um objeto de conexão com o banco desejado
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["3EMIAConnectionString"].ConnectionString);

        con.Open();

        // comando SQL
        string strSQL = "Insert into tb_usuario_02 (nome_usuario, email_usuario, tel_usuario) values(@nome_usuario, @email_usuario, @tel_usuario)";

        // Criar um objeto para executar o strSQL no endereço do objeto con
        SqlCommand InserirUsuario = new SqlCommand(strSQL, con);

        // Trocar os parâmetros pelos campos de texto - NA ORDEM DA TABELA
        InserirUsuario.Parameters.AddWithValue("@nome_usuario", txtNome.Text);
        InserirUsuario.Parameters.AddWithValue("@email_usuario", txtEmail.Text);
        InserirUsuario.Parameters.AddWithValue("@tel_usuario", txtTelefone.Text);

        // Aqui finalmente ele irá gravar
        try
        {
            // esse método insere informação na tabela
            InserirUsuario.ExecuteNonQuery();
            con.Close();
            txtEmail.Text = "";
            txtNome.Text = "";
            txtTelefone.Text = "";
            txtNome.Focus();
        }
        catch (Exception ex)
        {

            Response.Write(ex.Message);
        }

    }
}