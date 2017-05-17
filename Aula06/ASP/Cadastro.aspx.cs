using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Cadastro : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSalvar_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["3EMIAConnectionString"].ConnectionString);
        con.Open();

        // Verificar se existe um usuário cadastrado igual ao que foi digitado
        string strSQLPesquisar = "select count(*) from tb_Login_02 where Usuario = '" + txtUsuario.Text + "'";
        SqlCommand TotalUsuario = new SqlCommand(strSQLPesquisar, con);
        int total = Convert.ToInt16(TotalUsuario.ExecuteScalar());
        /* fechar a conexão pq pode acontecer de já existir um usuário e não quero ela permaneça aberta
           enquanto o usuário decide um novo nome pra ele */
        con.Close();
        if (total == 1)
        {
            Response.Write("<script>alert('Erro...Usuário já existe, insira outro usuário.');</script>");
            txtUsuario.Focus();
        }
        else
        {
            // criar um novo objeto de conexão
            // se vc não fechou acima, então não é necessário criar esse objeto novamente.
            //SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["3EMIAConnectionString"].ConnectionString);
            con.Open();
            string strSQLInserir = "insert into tb_Login_02(Usuario, Senha, Email, Nome, Departamento) values(@Usuario, @Senha, @Email, @Nome, @Departamento)";
            SqlCommand InserirUsuario = new SqlCommand(strSQLInserir, con);

            InserirUsuario.Parameters.AddWithValue("@Usuario", txtUsuario.Text);
            InserirUsuario.Parameters.AddWithValue("@Senha", txtSenha.Text);
            InserirUsuario.Parameters.AddWithValue("@Email", txtEmail.Text);
            InserirUsuario.Parameters.AddWithValue("@Nome", txtNome.Text);
            InserirUsuario.Parameters.AddWithValue("@Departamento", ddlDepto.SelectedItem.ToString());

            try
            {
                InserirUsuario.ExecuteNonQuery();
                con.Close();
                // alterar depois a linha abaixo
                //Response.Write("<script>alert('Usuário Cadastrado.');</script>");
                Response.Redirect("Login.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('"+ ex.Message +"');</script>");
                
            }
            
        }

    }
}