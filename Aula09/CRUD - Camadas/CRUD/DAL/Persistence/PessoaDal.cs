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

        // Método para Atualizar Dados
        public void Atualizar(Pessoa p)
        {
            try
            {
                // Abrindo a conexão
                AbrirConexao();

                // Criar a query do update e executar o método
                cmd = new SqlCommand("update Pessoa02 Set Nome=@Nome, Endereco=@Endereco, Email=@Email where Codigo =@Codigo", con);
                cmd.Parameters.AddWithValue("@Nome", p.Nome);
                cmd.Parameters.AddWithValue("@Endereco", p.Endereco);
                cmd.Parameters.AddWithValue("@Email", p.Email);
                cmd.Parameters.AddWithValue("@Codigo", p.Codigo);

                cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao Atualizar Dados" + ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }

        // Método para Excluir Dados
        public void Excluir(int codigo)
        {
            try
            {
                AbrirConexao();

                cmd = new SqlCommand("delete from Pessoa02 where Codigo=@Codigo", con);
                cmd.Parameters.AddWithValue("@Codigo", codigo);
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao Excluir Dados" + ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }

        // Método para Pesquisar uma Pessoa
        public Pessoa PesquisarPorCodigo(int codigo)
        {
            
            try
            {
                AbrirConexao();

                cmd = new SqlCommand("select * from Pessoa02 where Codigo=@Codigo", con);
                cmd.Parameters.AddWithValue("@Codigo", codigo);
                // Cuidado pois precisamos percorrer a base de dados

                Pessoa p = null; // Criamos um ponteiro

                // Quem faz a leitura do registro é o dr que criamos na classe conexao
                // Se algum registro for obtido pelo SqlDataReader então ele cria um objeto Pessoa

                dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    // Assim ele consegue ver tudo que tem (Atributos / Métodos) em uma classe Pessoa
                    p = new Pessoa();
                    p.Codigo = Convert.ToInt32(dr["Codigo"]);
                    p.Nome = dr["Nome"].ToString();
                    p.Endereco = dr["Endereco"].ToString();
                    p.Email = dr["Email"].ToString();
                }
                // Retornar a pessoa encontrada - p que acima está null
                return p;
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao Pesquisar Dados" + ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }

        // Método para Listar Pessoas
        public List<Pessoa> Listar()
        {
            
            try
            {
                AbrirConexao();

                cmd = new SqlCommand("select * from Pessoa02", con);

                // Quem faz a leitura do registro é o dr que criamos na classe conexao
                // Se algum registro for obtido pelo SqlDataReader então ele cria um objeto Pessoa

                dr = cmd.ExecuteReader();
                List<Pessoa> list = new List<Pessoa>(); // Criamos uma lista vazia
                while (dr.Read())
                {
                    // Assim ele consegue ver tudo que tem (Atributos / Métodos) em uma classe Pessoa
                    Pessoa p = new Pessoa();
                    p.Codigo = Convert.ToInt32(dr["Codigo"]);
                    p.Nome = dr["Nome"].ToString();
                    p.Endereco = dr["Endereco"].ToString();
                    p.Email = dr["Email"].ToString();

                    // Adicionar a pessoa à lista
                    list.Add(p);
                }

                // Retornar a lista de pessoas encontradas
                return list;
            }
            catch (Exception ex)
            {

                throw new Exception("Erro ao Listar Dados" + ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }

    }
}
