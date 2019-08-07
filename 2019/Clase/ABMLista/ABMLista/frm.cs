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
        string[] Lista = new string[5];
        int ProximaPosicion = 0;
        #endregion

        public frm()
        {
            InitializeComponent();
        }

        private void BtAgregar_Click(object sender, EventArgs e)
        {
            if(ProximaPosicion==Lista.Length)
            {
                this.AgregaRegistro(Incremento);
            }

            Lista[ProximaPosicion] = txt.Text;
            ProximaPosicion++;
            lbl.Text = this.MostrarLista();

            txt.SelectAll();
            txt.Focus();

        }

        private string MostrarLista()
        {
            string Respuesta = "";
            if (ProximaPosicion > 0)
            {
                Respuesta = Lista[0];
                for (int i = 1; i < ProximaPosicion; i++)
                {
                    Respuesta = Respuesta + "\r\n" + Lista[i];
                }
            }
            return Respuesta;
        }

        private void AgregaRegistro(int Incremento)
        {
            string[] Temp = new string[Lista.Length + Incremento];
            Lista = this.Copiar(Lista, Temp);

        }

        private string[] Copiar(string[] Origen, string[] Destino)
        {
            for (int i = 0; i < Origen.Length; i++)
            {
                Destino[i] = Origen[i];
            }
            return Destino;
        }
    }
}
