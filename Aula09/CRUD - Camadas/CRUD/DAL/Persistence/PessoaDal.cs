using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using DAL.Model;

namespace DAL.Persistence
{
    public class PessoaDal : Conexao
    {
        // Método para gravar Dados
        public void Gravar(Pessoa p) // Referência à classe que estou buscando - instanciar o objeto
        {
            try
            {

            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao Gravar Dados" + ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }

    }
}
