using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace PruebaFor
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Button1_Click(object sender, EventArgs e)
        {
            int i = 0;
            int j=0;

            for (   ;    ;    )
            {
                j = i * 10;
                i = i * 8 + 2;
                if (i < 10)
                {
                    break;
                }
            }

            int p = j + i;
        }
    }
}
