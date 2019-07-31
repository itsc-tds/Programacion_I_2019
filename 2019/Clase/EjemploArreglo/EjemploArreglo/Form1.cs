
using System;
using System.Windows.Forms;

namespace EjemploArreglo
{
    public partial class Form1 : Form
    {

        public Form1()
        {
            InitializeComponent();
        }

        private void Button1_Click(object sender, EventArgs e)
        {
            DiaSemana dia = new DiaSemana();

            label1.Text = dia.DiasSemana();
        }

        private void Button2_Click(object sender, EventArgs e)
        {
            DiaSemana dia2 = new DiaSemana();
            label2.Text = dia2.DiasSemana();
            label3.Text = dia2.Dias[2];
        }

        private void Button3_Click(object sender, EventArgs e)
        {
            pepe frm = new pepe(label3.Text);
            frm.ShowDialog();
        }
    }
}
