using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
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
            alumno.Notas[0] = txtNota.Text;
            if (Alumnos.Agregar(alumno))
            {
                lblCarga.Text = Alumnos.MostrarLista();
            }
            else
            {
                MessageBox.Show("e r r o r");
            }


            txtNombre.SelectAll();
            txtNombre.Focus();
        }

        private void BtBorrar_Click(object sender, EventArgs e)
        {
            string Resp = Alumnos.Borrar(txtApellido.Text + ", "+ txtNombre.Text);
            if (string.IsNullOrEmpty(Resp))
            {
                MessageBox.Show("el alumno " + txtNombre.Text + " ha sido borrado");
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

    }
}
