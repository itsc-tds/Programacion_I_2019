using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace prueba_1
{
    public partial class pipo : Form
    {
        public pipo()
        {
            InitializeComponent();
        }

        private void BtAceptar_Click(object sender, EventArgs e)
        {
            lblResultado.Text = "El dato ingresado es: " 
                                + txtIngreso.Text
                                + " fin de la frase";

        }

        private void TxtIngreso_TextChanged(object sender, EventArgs e)
        {
            //ENTRO AQUI
            
            this.txtIngreso.ForeColor = SystemColors.WindowText;

        }

        private void BtAceptar_Enter(object sender, EventArgs e)
        {
            btAceptar.Text = "Tomo foco";

        }
    }
}
