using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ArregloInfinito
{
    public partial class frmPepe : Form
    {
        string[] Lista = new string[5];
        int Indice = 0;

        public frmPepe()
        {
            InitializeComponent();
        }

        private void BtAceptar_Click(object sender, EventArgs e)
        {
            try
            {
                Lista[Indice] = txt.Text;
                Indice++;
                if(Indice==4)
                {
                    throw(new Exception("error logico mio"));
                }
            }
            catch (IndexOutOfRangeException)
            {
                string[] Dummy = new string[Lista.Length + 1];
                for (int i = 0; i < Indice; i++)
                {
                    Dummy[i] = Lista[i];
                }
                Lista = Dummy;
                Lista[Indice] = txt.Text;
                Indice++;
                lblSalida.Text = Lista.Length.ToString();
            }
            catch (Exception err)
            {
                MessageBox.Show(err.Message);
            }
        }
    }
}
