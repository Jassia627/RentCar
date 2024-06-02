using Entidades;
using System.Collections.Generic;

namespace Logica
{
    public class RespuestaVehiculo
    {
        public List<Vehiculo> vehiculos { get; set; }
        public Vehiculo vehiculo { get; set; }
        public bool listaVacia { get; set; }
        public string mensaje { get; set; }

        public RespuestaVehiculo(List<Vehiculo> vehiculos)
        {
            this.vehiculos = vehiculos;
            this.listaVacia = false;
            this.mensaje = "Lectura exitosa";
        }
        public RespuestaVehiculo(Vehiculo vehiculo)
        {
            this.vehiculo = vehiculo;
            this.listaVacia = false;
            this.mensaje = "Lectura exitosa";
        }
        public RespuestaVehiculo(string mensaje)
        {
            this.listaVacia = true;
            this.mensaje = mensaje;
        }
        public RespuestaVehiculo()
        {

        }
    }
}
