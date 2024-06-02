using Datos;
using Entidades;
using System;
using System.Collections.Generic;

namespace Logica
{
    public class ServicioCliente
    {
        static RepositorioClientes repositorioClientes;

        public ServicioCliente()
        {
            repositorioClientes = new RepositorioClientes();
        }
        public RespuestaCliente BuscarID(string id)
        {
            try
            {
                var cliente = repositorioClientes.BuscarID(id);
                if (cliente != null)
                {
                    return new RespuestaCliente(cliente);
                }
                return new RespuestaCliente("NO SE ENCONTRARON RESGISTROS");
            }
            catch (Exception e)
            {
                return new RespuestaCliente("ERROR: " + e.Message);
            }
        }
        public string Insertar(Cliente obj)
        {
            try
            {
                if (repositorioClientes.BuscarID(obj.IDC) == null)
                {
                    repositorioClientes.Insertar(obj);
                    return "CLIENTE " + obj.IDC + " SE GUARDO CORRECTAMENTE.";
                }
                return "ERROR AL INSERTAL EL CLIENTE: " + obj.IDC;
            }
            catch (Exception e)
            {
                return "ERROR: " + e.Message;
            }
        }

        public RespuestaCliente Consultar()
        {
            RespuestaCliente respuesta;
            try
            {
                if (repositorioClientes.Todos("") != null)
                {
                    List<Cliente> clientes = repositorioClientes.Todos("");
                    respuesta = new RespuestaCliente(clientes);
                    return respuesta;
                }
                else
                {
                    return new RespuestaCliente("NO SE ENCONTRARON RESGISTROS");
                }
            }
            catch (Exception e)
            {
                return new RespuestaCliente("ERROR: " + e.Message);
            }
        }

        public string Actualizar(Cliente obj)
        {
            try
            {
                if (repositorioClientes.BuscarID(obj.IDC) == null)
                {
                    repositorioClientes.Actualizar(obj);
                    return "CLIENTE " + obj.IDC + " SE ACTUALIZO CORRECTAMENTE.";
                }
                return "ERROR AL ACTUALIZAR EL CLIENTE: " + obj.IDC;
            }
            catch (Exception e)
            {
                return "ERROR: " + e.Message;
            }
        }

        public string Eliminar(Cliente obj)
        {
            try
            {
                if (repositorioClientes.BuscarID(obj.IDC) != null)
                {
                    repositorioClientes.Eliminar(obj);
                    return "CLIENTE " + obj.IDC + " SE ELIMINO CORRECTAMENTE.";
                }
                return "ERROR AL ELIMINAR EL CLIENTE: " + obj.IDC;
            }
            catch (Exception e)
            {
                return "ERROR: " + e.Message;
            }
        }
    }
}
