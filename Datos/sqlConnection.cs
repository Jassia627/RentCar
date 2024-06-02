using System;
using System.Data;

namespace Datos
{
    public class sqlConnection
    {
        private string cadenaConexion;

        public sqlConnection(string cadenaConexion)
        {
            this.cadenaConexion = cadenaConexion;
        }

        public ConnectionState State { get; internal set; }

        internal void Close()
        {
            throw new NotImplementedException();
        }

        internal void Open()
        {
            throw new NotImplementedException();
        }
    }
}