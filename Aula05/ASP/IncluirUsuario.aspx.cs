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
    }
}