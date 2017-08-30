using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace DAL.Persistence
{
    public class Conexao
    {
        // Atributos
        // Protected -> apenas classes que herdam de Conexao terão acesso
        protected SqlConnection con;
        protected SqlCommand cmd;
        protected SqlDataReader dr; // Tratar os registros obtidos nas queries

        // Método para abrir a conexão
        protected void AbrirConexao()
        {
            try
            {
                con = new SqlConnection("Data Source=sql.fiap.com.br;Initial Catalog=3EMIA;User ID=RM12294;Password=***********");
                con.Open();
            }
            catch (Exception ex)
            {

                throw new Exception(ex.Message);
            }
        }

        // Método para fechar a conexão
        protected void FecharConexao()
        {
            try
            {
                con.Close();
            }
            catch (Exception ex)
            {

                throw new Exception(ex.Message);
            }
        }
    }


}
