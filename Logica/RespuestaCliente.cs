using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;

namespace Logica
{
    public class RespuestaCliente
    {
        public List<Cliente> clientes { get; set; }
        public Cliente cliente { get; set; }
        public bool listaVacia { get; set; }
        public string mensaje { get; set; }

        public RespuestaCliente(List<Cliente> clientes)
        {
            this.clientes = clientes;
            this.listaVacia = false;
            this.mensaje = "Lectura exitosa";
        }
        public RespuestaCliente(Cliente cliente)
        {
            this.cliente = cliente;
            this.listaVacia = false;
            this.mensaje = "Lectura exitosa";
        }
        public RespuestaCliente(string mensaje)
        {
            this.listaVacia= true;
            this.mensaje = mensaje;
        }
        public RespuestaCliente()
        {

        }
    }
}
