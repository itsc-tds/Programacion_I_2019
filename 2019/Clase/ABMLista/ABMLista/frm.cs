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

    }
}
