using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace EjemploArreglo
{
    public partial class pepe : Form
    {

        public pepe( string dia3)
        {
            InitializeComponent();
            label2.Text = dia3;
        }

        private void Button1_Click(object sender, EventArgs e)
        {
            DiaSemana pepito = new DiaSemana();
            label1.Text = pepito.DiasSemana();
        }

        private void Pepe_Load(object sender, EventArgs e)
        {

        }
    }
}
