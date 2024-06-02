using DatosDAO;
using Entidades;
using System.Collections.Generic;
using System.Data;
using System.Data.OracleClient;

namespace Datos

{
    public class RepositorioClientes : ConexionBD, ICRUD<Cliente>
    {
        public void Actualizar(Cliente obj)
        {
            string _sql = string.Format("UPDATE Clientes SET Nombre = '{0}', Tipo_Cliente = '{1}' WHERE Cliente_id = '{2}'", obj.Nombre, obj.TipoCliente, obj.IDC);
            var cmd = new OracleCommand(_sql, conexion);
            AbrirConnexion();
            cmd.ExecuteNonQuery();
            CerrarConnexion();
        }

        public Cliente BuscarID(string id)
        {
            string _sql = string.Format("SELECT * FROM Clientes WHERE Cliente_id = '{0}'", id);
            var cmd = new OracleCommand(_sql, conexion);
            AbrirConnexion();
            var reader = cmd.ExecuteReader();
            reader.Read();
            var cliente = new Cliente(reader.GetString(0), reader.GetString(1), reader.GetString(2));
            CerrarConnexion();
            return cliente;
        }

        public void Eliminar(Cliente obj)
        {
            string _sql = string.Format("DELETE FROM Clientes WHERE Cliente_id='{0}'", obj.IDC);
            var cmd = new OracleCommand(_sql, conexion);
            AbrirConnexion();
            cmd.ExecuteNonQuery();
            CerrarConnexion();
        }

        public void Insertar(Cliente obj)
        {
            string _sql = string.Format("INSERT INTO Clientes VALUES ('{0}', '{1}', '{2}')", obj.IDC, obj.Nombre, obj.TipoCliente);
            var cmd = new OracleCommand(_sql, conexion);
            AbrirConnexion();
            cmd.ExecuteNonQuery();
            CerrarConnexion();
        }

        public List<Cliente> Todos(string obj)
        {
            List<Cliente> list = new List<Cliente>();
            AbrirConnexion();
            var cmd = new OracleCommand("LISTAR_CLIENTE", conexion);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new OracleParameter("P_Cursor", OracleType.Cursor)).Direction = ParameterDirection.Output;
            var dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            while (dr.Read())
            {
                var cliente = new Cliente();
                cliente.IDC = dr["Cliente_id"].ToString();
                cliente.Nombre = dr["Nombre"].ToString();
                cliente.TipoCliente = dr["Tipo_Cliente"].ToString();
                list.Add(cliente);
            }
            return list;
        }
    }
}