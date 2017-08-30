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
                // Abrindo a conexão
                AbrirConexao();

                // Criar a query do insert e executar o método
                cmd = new SqlCommand("insert into Pessoa02(Nome, Endereco, Email) values(@Nome, @Endereco, @Email)", con);
                cmd.Parameters.AddWithValue("@Nome", p.Nome);
                cmd.Parameters.AddWithValue("@Endereco", p.Endereco);
                cmd.Parameters.AddWithValue("@Email", p.Email);
                cmd.ExecuteNonQuery();

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
