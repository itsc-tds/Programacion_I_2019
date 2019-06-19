using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Prueba4
{
    public partial class Form1 : Form
    {
        int flagH = 1;
        int flagV = 1;
        int Paso = 1;
        
        public Form1()
        {
            InitializeComponent();
        }

        private void BtPlay_Click(object sender, EventArgs e)
        {
            int Contador = 0;
            while (Contador <= 2000)
            {
                // Control Horizontal
                if (lblRojo.Left < pn1.Size.Width && flagH == 1)
                {
                    lblRojo.Left = lblRojo.Left + Paso;
                }
                else
                {
                    flagH = -1;
                    lblRojo.Left = lblRojo.Left - Paso;
                }

                // Control Vertical
                if ((lblRojo.Top + 2 * lblRojo.Height) >= pn1.Size.Height
                    || lblRojo.Top <= 0)
                {
                    flagV = -1 * flagV;
                }
                lblRojo.Top = lblRojo.Top + Paso * flagV;
                

                Contador++;
                this.Refresh();
            }
        }
    }
}
