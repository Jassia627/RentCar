using DatosDAO;
using Entidades;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.OracleClient;
namespace Datos
{
    public class RepositorioVehiculo : ConexionBD, ICRUD<Vehiculo>
    {
        public void Actualizar(Vehiculo obj)
        {
            string _sql = string.Format("UPDATE Vehiculos SET Marca = '{0}', KilometrajeActual = '{1}' WHERE Placa = '{2}'", obj.Marca, obj.KilometrajeActual, obj.PlacaVehiculo);
            var cmd = new OracleCommand(_sql, conexion);
            AbrirConnexion();
            int filas = cmd.ExecuteNonQuery();
            CerrarConnexion();
        }

        public Vehiculo BuscarID(string placa)
        {
            string _sql = string.Format("SELECT * FROM Vehiculos WHERE Placa = '{0}'", placa);
            var cmd = new OracleCommand(_sql, conexion);
            AbrirConnexion();
            var reader = cmd.ExecuteReader();
            reader.Read();
            var vehiculo = new Vehiculo(reader.GetString(0), reader.GetString(1), reader.GetInt32(2));
            CerrarConnexion();
            return vehiculo;
        }

        public void Eliminar(Vehiculo obj)
        {
            string _sql = string.Format("DELETE FROM Vehiculos WHERE Placa='{0}'", obj.PlacaVehiculo);
            var cmd = new OracleCommand(_sql, conexion);
            AbrirConnexion();
            int filas = cmd.ExecuteNonQuery();
            CerrarConnexion();
        }

        public void Insertar(Vehiculo obj)
        {
            string _sql = string.Format("INSERT INTO Vehiculos VALUES ('{0}', '{1}', '{2}')", obj.PlacaVehiculo, obj.Marca, obj.KilometrajeActual);
            var cmd = new OracleCommand(_sql, conexion);
            AbrirConnexion();
            cmd.ExecuteNonQuery();
            CerrarConnexion();
        }

        public List<Vehiculo> Todos(string obj)
        {
            List<Vehiculo> list = new List<Vehiculo>();
            AbrirConnexion();
            var cmd = new OracleCommand("LISTAR_VEHICULO", conexion);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new OracleParameter("P_Cursor", OracleType.Cursor)).Direction = ParameterDirection.Output;
            var dr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
            while (dr.Read())
            {
                var vehiculo = new Vehiculo();
                vehiculo.PlacaVehiculo = dr["Placa"].ToString();
                vehiculo.Marca = dr["Marca"].ToString();
                vehiculo.KilometrajeActual = Convert.ToInt32(dr["KilometrajeActual"].ToString());
                list.Add(vehiculo);
            }
            return list;
        }
    }
}