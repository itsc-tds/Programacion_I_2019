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
    public partial class ABM : Form
    {
        #region Constantes
        const int Incremento = 1;
        #endregion

        #region Propiedades
        ABMLista.Clases.Lista Alumnos = new Clases.Lista();
        Alumnos alumno = new Alumnos();
        #endregion

        public ABM()
        {
            InitializeComponent();
        }

        private void BtAgregar_Click(object sender, EventArgs e)
        {
            if (Alumnos.Agregar(txtNombre.Text + " - " + txtNota.Text   ))
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
            string Resp = Alumnos.Borrar(txtNombre.Text);
            if (string.IsNullOrEmpty(Resp))
            {
                MessageBox.Show("el alumno " + txtNombre.Text + " ha sido borrado");
            }
            lblCarga.Text = Alumnos.MostrarLista();
        }

        private void BtModificar_Click(object sender, EventArgs e)
        {

        }

        private void BtBuscar_Click(object sender, EventArgs e)
        {
            int Pos = Alumnos.BuscarPosicion(txtNombre.Text);
            if (Pos == -1)
            {
               MessageBox.Show( "No se pudo encontrar el alumno" + txtNombre.Text);
            }
            else
            {
                MessageBox.Show("El alumno " + txtNombre.Text + " fue encontrado en la posición "+ (Pos + 1).ToString());
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

        private void Button1_Click(object sender, EventArgs e)
        {
            ABM_Alumnos abm = new ABM_Alumnos();
            abm.ShowDialog();
        }
    }
}
