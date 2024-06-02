using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidades
{
    public class Cliente
    {
        public Cliente(string IDC, string nombre, string tipoCliente)
        {
            this.IDC = IDC;
            Nombre = nombre;
            TipoCliente = tipoCliente;
        }
        public Cliente()
        {

        }
        public string IDC { get; set; }
        public string Nombre { get; set; }
        public string TipoCliente { get; set; }

    }
}
