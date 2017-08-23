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
    }

    // Método para acessar a tabela


    // Método para fechar a tabela
}
