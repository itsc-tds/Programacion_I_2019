using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace EjemploMatriz2
{
    public partial class frmListaAlumnos : Form
    {
        //Lista de Alumnos
        //public System.String[] Lista = new System.String[3];
        //public System.Int32 CantElem = 0;
        EjemploMatriz2.lista ListaAlumno = new EjemploMatriz2.lista();
        EjemploMatriz2.lista ListaMateria = new EjemploMatriz2.lista();

        public frmListaAlumnos()
        {
            InitializeComponent();
        }

        private void btAceptar_Click(object sender, EventArgs e)
        {
            lblSalida.Text = ListaAlumno.CargarLista(txtAlumno.Text);
        }

        private void btBuscarNom_Click(object sender, EventArgs e)
        {
            System.Int32 mPosicion = 0;
            mPosicion = ListaAlumno.BuscaPorNombre(txtAlumno.Text);

            if (mPosicion == -1)
            {
                lblSalida.Text = "no se encontro " + txtAlumno.Text;
            }
            else
            {
                lblSalida.Text = "Posicion de "
                                 + txtAlumno.Text
                                 + ": "
                                 + System.Convert.ToString(mPosicion);
            }
        }

        private void btCargaMateria_Click(object sender, EventArgs e)
        {
            lblMateria.Text = ListaMateria.CargarLista(txtMateria.Text);
        }

        private void btBuscarPos_Click(object sender, EventArgs e)
        {
            lblSalida.Text = "En la posición " 
                             + txtAlumno.Text 
                             + " está " 
                             + ListaAlumno.BuscarPorPosicion(txtAlumno.Text);
        }
    }
}
