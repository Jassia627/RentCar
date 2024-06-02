using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Entidades;

namespace DatosDAO
{
    public interface ICRUD<T>
    {
        void Insertar(T obj);
        void Eliminar(T obj);
        void Actualizar(T obj);
        T BuscarID(string id);
        List<T> Todos(string obj);
    }
}