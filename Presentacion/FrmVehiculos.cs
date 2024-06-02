using Datos;
using Entidades;
using Logica;
using System;
using System.Windows.Forms;

namespace Presentacion
{
    public partial class FrmVehiculos : Form
    {
        private static FrmVehiculos _instance = null;
        ServicioVehiculo servicioVehiculo;
        private FrmVehiculos()
        {
            InitializeComponent();
            servicioVehiculo = new ServicioVehiculo();
        }

        public static FrmVehiculos GetInstancia()
        {
            if (_instance == null || _instance.IsDisposed)
            {
                _instance = new FrmVehiculos();
            }
            return _instance;
        }

        private void FrmVehiculos_Load(object sender, EventArgs e)
        {
            CargarLista();
            CargarGrillaVehiculo();
        }

        void CargarLista()
        {
            var respuesta = servicioVehiculo.Consultar();
            if (!respuesta.listaVacia)
            {
                listaVehiculos.DataSource = respuesta.vehiculos;
                listaVehiculos.DisplayMember = "Marca";
                listaVehiculos.ValueMember = "PlacaVehiculo";
            }
        }
        void CargarGrillaVehiculo()
        {
            grillaVehiculo.DataSource = servicioVehiculo.Consultar().vehiculos;
        }

        private void listaVehiculos_SelectedIndexChanged(object sender, EventArgs e)
        {
            string placa = listaVehiculos.SelectedValue.ToString();
            Buscar(placa);
        }

        void Buscar(string placa)
        {
            try
            {
                var vehiculo = servicioVehiculo.BuscarPlaca(placa);
                ver(vehiculo.vehiculo);
            }
            catch (Exception)
            {
            }
        }
        void ver(Vehiculo vehiculo)
        {
            if (vehiculo == null)
            {
                return;
            }
            txtPlaca.Text = vehiculo.PlacaVehiculo;
            txtMarca.Text = vehiculo.Marca;
            txtKMactual.Text = vehiculo.KilometrajeActual.ToString();
        }

        private void grillaVehiculo_CellDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            string placa = grillaVehiculo.Rows[e.RowIndex].Cells[0].Value.ToString();
            Buscar(placa);
            listaVehiculos.SelectedIndex = e.RowIndex;
            this.tabControl1.TabPages[0].Show();
        }

        private void btnNuevo_Click(object sender, EventArgs e)
        {
            Nuevo(false);
        }

        void Nuevo(bool soloLecura)
        {
            foreach (Control item in groupBox2.Controls)
            {
                if (item is TextBox)
                {
                    ((TextBox)item).Clear();
                    ((TextBox)item).ReadOnly = soloLecura;
                }
            }
        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            var vehiculo = new Vehiculo(txtPlaca.Text, txtMarca.Text, Convert.ToInt32(txtKMactual.Text));
            Guardar(vehiculo);
        }

        void Guardar(Vehiculo vehiculo)
        {
            MessageBox.Show(servicioVehiculo.Insertar(vehiculo));
        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {
            Buscar(txtPlaca.Text.Trim());
        }

        private void btnActualizar_Click(object sender, EventArgs e)
        {
            var vehiculo = new Vehiculo(txtPlaca.Text, txtMarca.Text, Convert.ToInt32(txtKMactual.Text));
            Actualizar(vehiculo);
        }
        void Actualizar(Vehiculo vehiculo)
        {
            MessageBox.Show(servicioVehiculo.Actualizar(vehiculo));
        }

        private void btnEliminar_Click(object sender, EventArgs e)
        {
            if (txtPlaca.Text.Length == 0)
            {
                return;
            }
            Eliminar(servicioVehiculo.BuscarPlaca(txtPlaca.Text).vehiculo);
        }
        void Eliminar(Vehiculo vehiculo)
        {
            MessageBox.Show(servicioVehiculo.Eliminar(vehiculo));
        }

        private void btnSalir_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
