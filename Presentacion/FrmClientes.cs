using Entidades;
using Logica;
using System;
using System.Windows.Forms;

namespace Presentacion
{
    public partial class FrmClientes : Form
    {
        private static FrmClientes _instance = null;
        ServicioCliente clienteService;

        private FrmClientes()
        {
            InitializeComponent();
            clienteService = new ServicioCliente();
        }

        public static FrmClientes GetInstancia()
        {
            if (_instance == null || _instance.IsDisposed)
            {
                _instance = new FrmClientes();
            }
            return _instance;
        }

        private void FrmClientes_Load(object sender, EventArgs e)
        {
            CargarLista();
            CargarGrillaClientes();
        }
        void CargarLista()
        {
            var respuesta = clienteService.Consultar();
            if (!respuesta.listaVacia)
            {
                listaClientes.DataSource = respuesta.clientes;
                listaClientes.DisplayMember = "Nombre";
                listaClientes.ValueMember = "IDC";
            }
        }
        void CargarGrillaClientes()
        {
            grillaClientes.DataSource = clienteService.Consultar().clientes;
        }

        private void listaClientes_SelectedIndexChanged(object sender, EventArgs e)
        {
            string id = listaClientes.SelectedValue.ToString();
            Buscar(id);
        }
        void Buscar(string id)
        {
            try
            {
                var cliente = clienteService.BuscarID(id);
                ver(cliente.cliente);
            }
            catch (Exception)
            {
            }
        }
        void ver(Cliente cliente)
        {
            if (cliente == null)
            {
                return;
            }
            txtIdCliente.Text = cliente.IDC;
            txtNombre.Text = cliente.Nombre;
            txtTipo.Text = cliente.TipoCliente;
        }

        private void grillaClientes_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            string id = grillaClientes.Rows[e.RowIndex].Cells[0].Value.ToString();
            Buscar(id);
            listaClientes.SelectedIndex = e.RowIndex;
            this.tabControl1.TabPages[0].Show();
        }

        private void btnNuevo_Click(object sender, EventArgs e)
        {
            Nuevo(false);
        }
        void Nuevo(bool soloLectura)
        {
            foreach (Control item in groupBox2.Controls)
            {
                if (item is TextBox)
                {
                    ((TextBox)item).Clear();
                    ((TextBox)item).ReadOnly = soloLectura;
                }
            }
        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            var cliente = new Cliente(txtIdCliente.Text, txtNombre.Text, txtTipo.Text);
            Guardar(cliente);
        }
        void Guardar(Cliente cliente)
        {
            MessageBox.Show(clienteService.Insertar(cliente));
        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {
            Buscar(txtIdCliente.Text.Trim());
        }
        
        private void btnActualizar_Click(object sender, EventArgs e)
        {
            var cliente = new Cliente(txtIdCliente.Text, txtNombre.Text, txtTipo.Text);
            Actualizar(cliente);
        }
        void Actualizar(Cliente cliente)
        {
            MessageBox.Show(clienteService.Actualizar(cliente));
        }

        private void btnEliminar_Click(object sender, EventArgs e)
        {
            if (txtIdCliente.Text.Length == 0)
            {
                return;
            }
            Eliminar(clienteService.BuscarID(txtIdCliente.Text).cliente);
        }
        void Eliminar(Cliente cliente)
        {
            MessageBox.Show(clienteService.Eliminar(cliente));
        }

        private void btnSalir_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
