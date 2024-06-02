using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using Datos;

namespace Logica
{
    public class ServicioVehiculo
    {
        static RepositorioVehiculo repositorioVehiculo;

        public ServicioVehiculo()
        {
            repositorioVehiculo = new RepositorioVehiculo();
        }

        public string Insertar(Vehiculo obj)
        {
            try
            {
                if (repositorioVehiculo.BuscarID(obj.PlacaVehiculo) == null)
                {
                    repositorioVehiculo.Insertar(obj);
                    return "VEHICULO " + obj.PlacaVehiculo + " SE GUARDO CORRECTAMENTE.";
                }
                return "ERROR AL INSERTAR EL VEHICULO: " + obj.PlacaVehiculo;
            }
            catch (Exception e)
            {
                return "ERROR: " + e.Message;
            }
        }

        public RespuestaVehiculo Consultar()
        {
            RespuestaVehiculo respuesta;
            try
            {
                if (repositorioVehiculo.Todos("") != null)
                {
                    List<Vehiculo> vehiculos = repositorioVehiculo.Todos("");
                    respuesta = new RespuestaVehiculo(vehiculos);
                    return respuesta;
                }
                else
                {
                    return new RespuestaVehiculo("NO SE ENCONTRARON REGISTROS.");
                }
            }
            catch (Exception e)
            {
                return new RespuestaVehiculo("ERROR: " + e.Message);
            }
        }
        public RespuestaVehiculo BuscarPlaca(string placa)
        {
            try
            {
                var vehiculo = repositorioVehiculo.BuscarID(placa);
                if (vehiculo != null)
                {
                    return new RespuestaVehiculo(vehiculo);
                }
                return new RespuestaVehiculo("NO SE ENCONTRARON RESGISTROS");
            }
            catch (Exception e)
            {
                return new RespuestaVehiculo("ERROR: " + e.Message);
            }
        }
        public string Actualizar(Vehiculo obj)
        {
            try
            {
                if (repositorioVehiculo.BuscarID(obj.PlacaVehiculo) == null)
                {
                    repositorioVehiculo.Actualizar(obj);
                    return "VEHICULO " + obj.PlacaVehiculo + " SE ACTUALIZO CORRECTAMENTE.";
                }
                return "ERROR AL ACTUALIZAR EL VEHICULO: " + obj.PlacaVehiculo;
            }
            catch (Exception e)
            {
                return "ERROR: " + e.Message;
            }
        }

        public string Eliminar(Vehiculo obj)
        {
            try
            {
                if (repositorioVehiculo.BuscarID(obj.PlacaVehiculo) != null)
                {
                    repositorioVehiculo.Eliminar(obj);
                    return "VEHICULO " + obj.PlacaVehiculo + " SE ELIMINO CORRECTAMENTE.";
                }
                return "ERROR AL ELIMINAR EL VEHICULO: " + obj.PlacaVehiculo;
            }
            catch (Exception e)
            {
                return "ERROR: " + e.Message;
            }
        }
    }
}
