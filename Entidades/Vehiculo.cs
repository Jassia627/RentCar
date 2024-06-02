using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Vehiculo
    {

        public string PlacaVehiculo { get; set; }
        public string Marca { get; set; }
        public int KilometrajeActual { get; set; }

        public Vehiculo(string text, string text1, string text2)
        {
        }

        public Vehiculo(string placaVehiculo, string marca, int kilometrajeActual)
        {
            PlacaVehiculo = placaVehiculo;
            Marca = marca;
            KilometrajeActual = kilometrajeActual;
        }

        public Vehiculo()
        {
        }

        public override string ToString()
        {
            return PlacaVehiculo + ";" + Marca + ";" + KilometrajeActual;
        }
    }
}
