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
    public partial class frm : Form
    {
        #region Constantes
        const int Incremento = 5;
        #endregion

        #region Propiedades
        ABMLista.Clases.Lista Alumnos = new Clases.Lista();
        ABMLista.Clases.Lista Materias = new Clases.Lista();
        #endregion

        public frm()
        {
            InitializeComponent();
        }

        #region EVENTOS
        private void BtAgregar_Click(object sender, EventArgs e)
        {

            if (Alumnos.Agregar(txt.Text))
            {
                lbl.Text = Alumnos.MostrarLista();
            }
            else
            {
                MessageBox.Show("e r r o r");
            }


            txt.SelectAll();
            txt.Focus();

        }

        private void BtBuscar_Click(object sender, EventArgs e)
        {
            int Pos = Alumnos.BuscarPosicion(txt.Text);
            if (Pos == -1)
            {
                lbl.Text = "El alumno " + txt.Text + " no se encontró";
            }
            else
            {
                lbl.Text = "la posición del alumno es " + (Pos + 1).ToString();
            }
        }

        private void BtBorrar_Click(object sender, EventArgs e)
        {
            string Resp = Alumnos.Borrar(txt.Text);
            if (string.IsNullOrEmpty(Resp))
            {
                Resp = "el alumno " + txt.Text + " ha sido borrado";
            }
            lbl.Text = Resp;
        }

        #endregion

    }
}
