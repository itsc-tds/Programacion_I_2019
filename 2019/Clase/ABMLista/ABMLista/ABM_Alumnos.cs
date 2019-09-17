using System;
using System.Windows.Forms;

namespace ABMLista
{
    public partial class ABM_Alumnos : Form
    {
        #region Constantes
        const int Incremento = 1;
        #endregion

        #region Propiedades
        ABMLista.Clases.ListaObjetos Alumnos = new Clases.ListaObjetos();
        int idModificador;

        #endregion

        public ABM_Alumnos()
        {
            InitializeComponent();
        }

        private void BtAgregar_Click(object sender, EventArgs e)
        {
            Alumnos alumno = new Alumnos();
            alumno.Apellido = txtApellido.Text;
            alumno.Nombre = txtNombre.Text;
            if (Alumnos.Agregar(alumno))
            {
                lblCarga.Text = Alumnos.MostrarLista();
            }
            else
            {
                MessageBox.Show("e r r o r");
            }


            LlenarDataGridView(alumno);
            txtNombre.SelectAll();
            txtNombre.Focus();
        }

        private void BtBorrar_Click(object sender, EventArgs e)
        {
            string Resp = Alumnos.Borrar(txtApellido.Text + ", " + txtNombre.Text);
            if (string.IsNullOrEmpty(Resp))
            {
                MessageBox.Show("El alumno '" + txtNombre.Text + "' ha sido borrado");
            }
            lblCarga.Text = Alumnos.MostrarLista();
        }

        private void BtModificar_Click(object sender, EventArgs e)
        {
            Alumnos.Modificar(Alumnos.BuscarPosicion(idModificador.ToString()), txtNombre.Text, txtApellido.Text);
        }

        private void BtBuscar_Click(object sender, EventArgs e)
        {
            int Pos = Alumnos.BuscarPosicion(txtNombre.Text);
            if (Pos == -1)
            {
                lblCarga.Text = "El alumno " + txtNombre.Text + " no se encontró";
            }
            else
            {
                lblCarga.Text = "la posición del alumno es " + (Pos + 1).ToString();
                idModificador = Pos + 1;
                btModificar.Enabled = true;
            }
        }

        private void BtMostrar_Click(object sender, EventArgs e)
        {
            lblCarga.Text = Alumnos.MostrarLista();
            string eo = Alumnos.Ordenar();
        }

        private void BtOrdenar_Click(object sender, EventArgs e)
        {
            lblCarga.Text = Alumnos.MostrarLista();
            lblOrdenado.Text = Alumnos.Ordenar();
        }

        public void LlenarDataGridView(Alumnos alumno)
        {
            dgvAlumnos.Rows.Add(alumno.Id, alumno.Apellido, alumno.Nombre);
        }

        private void DgvAlumnos_CellMouseClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            
            lblAlumnoSeleccionado.Text = dgvAlumnos.Rows[e.RowIndex].Cells[0].Value.ToString();
        }
    }
}
