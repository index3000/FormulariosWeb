using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Esta clase permite la conexión de nuestro sitio web con SQL Server
/// </summary>

namespace FormulariosWeb
{
    public class Conexion
    {
        SqlConnection con = new SqlConnection("Data Source=LAPTOP-TRM0LEE6\\SQLEXPRESS;Initial Catalog=Aiep;Integrated Security=True");
        private SqlCommandBuilder cmd;
        public DataSet ds = new DataSet();
        public SqlDataAdapter da;
        public SqlCommand comando;


        public Conexion()
        {

        }
        // Método para comprobar conexión con la base de datos

        public void Conectar()
        {
            try 
            {
                con.Open();
            }
            catch(Exception)
            {
                Console.Write("Ups!! Algo ocurre con la conexión...");
            }
            finally
            {
                con.Close();
            }
        }

        // Método que permite registrar usuario a la base de datos
        public void insertar(string sql)
        {
            con.Open();
            comando = new SqlCommand(sql, con);
            int i = comando.ExecuteNonQuery();
            if (i > 0)
            {

            }
            else
            {

            }
        }
    }
}