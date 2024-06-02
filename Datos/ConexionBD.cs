using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.OracleClient;
namespace Datos
{
    public class ConexionBD 
    {
        protected OracleConnection conexion;
        protected string cadenaConexion;
        public ConexionBD()
        {
            cadenaConexion = string.Format("Data Source=localhost:1521/xepdb1;Persist Security Info=True;User ID=system;Password=Jassia;Unicode=True");
            conexion = new OracleConnection(cadenaConexion);
        }
        public string AbrirConnexion()
        {
            if (conexion.State == System.Data.ConnectionState.Open)
            {
                CerrarConnexion();
            }
            conexion.Open();
            return conexion.State.ToString();
        }
        public void CerrarConnexion()
        {
            conexion.Close();
        }
    }
}
