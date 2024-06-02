using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using DatosDAO;

namespace Datos
{
    public class RepositorioFactura : ConexionBD, ICRUD<Factura>
    {
        public void Actualizar(Factura obj)
        {
            throw new NotImplementedException();
        }

        public Factura BuscarID(string id)
        {
            throw new NotImplementedException();
        }

        public void Eliminar(Factura obj)
        {
            throw new NotImplementedException();
        }

        public void Insertar(Factura obj)
        {
            throw new NotImplementedException();
        }

        public List<Factura> Todos(string obj)
        {
            throw new NotImplementedException();
        }
    }
}
