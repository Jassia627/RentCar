using System;

namespace Entidades
{
    public class Factura
    {
        public int Id { get; set; }
        public Cliente Cliente { get; set; }
        public Vehiculo Vehiculo { get; set; }
        public double ValorTotal { get; set; }
        public DateTime Fecha { get; set; }

        public double CalcularValorKM(string tipo, double kilometrajeActual, double precio, Vehiculo vehiculo)
        {
            double descuento;
            if (tipo.Equals("Ocacional"))
            {
                ValorTotal = (vehiculo.KilometrajeActual - kilometrajeActual) * precio;
            }
            else
            {
                ValorTotal = (vehiculo.KilometrajeActual - kilometrajeActual) * precio;
                descuento = ValorTotal * 0.15;
                ValorTotal -= descuento;
            }
            return ValorTotal;
        }
    }
}
