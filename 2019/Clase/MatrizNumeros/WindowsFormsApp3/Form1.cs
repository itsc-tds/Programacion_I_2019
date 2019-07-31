namespace MatrizNumeros
{
    using System;
    using System.Windows.Forms;

    public partial class Form1 : Form
    {
        Label[,] Lbl = new Label[3, 2];
        int Filas = 0;
        int Columnas = 0;

        int Provocador = 1;

        public Form1()
        {
            InitializeComponent();

            Lbl[0, 0] = lbl_0_0;
            Lbl[1, 0] = lbl_1_0;
            Lbl[2, 0] = lbl_2_0;
            Lbl[0, 1] = lbl_0_1;
            Lbl[1, 1] = lbl_1_1;
            Lbl[2, 1] = lbl_2_1;
        }

        private void BtAceptar_Click(object sender, EventArgs e)
        {
            try
            {
                Lbl[Filas, Columnas].Text = txt.Text;

                if (Columnas == 0)
                {
                    Columnas = 1;
                }
                else
                {
                    Columnas = 0;
                    Filas++;
                }
                int pepe = 10 / Provocador;
            }
            catch (IndexOutOfRangeException)
            {
                Filas = 0;
                Columnas = 0;
                for (int i = 0; i < 3; i++)
                {
                    for (int j = 0; j < 2; j++)
                    {
                        Lbl[i, j].Text = "";
                    }
                }
                Lbl[Filas, Columnas].Text = txt.Text;
                Columnas = 1;
                Provocador = 0;
            }
            catch (Exception err)
            {
                MessageBox.Show(err.Message);
            }
        }
    }
}
