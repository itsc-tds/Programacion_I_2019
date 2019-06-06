using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace ProductPrecio
{
    public partial class Formulario : Form
    {
        ProductPrecio.Producto ListaPrecio = new ProductPrecio.Producto();

        public Formulario()
        {
            InitializeComponent();
        }

        private void btAgregar_Click(object sender, EventArgs e)
        {
            try
            {
                lblSalida.Text = ListaPrecio.CargarLista(
                    txtProducto.Text, 
                    txtPrecio.Text);
            }
            catch (Exception er)
            {
                MessageBox.Show("Error: " + er.Message);
            }
            txtProducto.Focus();
        }

        private void btListarOrdenado_Click(object sender, EventArgs e)
        {
            try
            {
                System.String Resp = "";
                lblSalida.Text = ListaPrecio.Ordenar();
            }
            catch (Exception er)
            {
                MessageBox.Show("Error: " + er.Message);
            }
        }

        private void txtProducto_Enter(object sender, EventArgs e)
        {
            txtProducto.SelectAll();
        }

        private void txtPrecio_Enter(object sender, EventArgs e)
        {
            txtPrecio.SelectAll();
        }

        private void btMostrar_Click(object sender, EventArgs e)
        {
            System.Int32 i =  ListaPrecio.BuscaPorNombre(txtProducto.Text);
            if (i == -1)
            {
                lblSalida.Text = "Producto no encontrado";
            }
            else
            {
                txtPrecio.Text = System.Convert.ToString(ListaPrecio.Precio[i-1]);

                lblSalida.Text = "El producto " + ListaPrecio.Nombre[i-1] 
                                 + " se encuentra\r\nen el renglon " + i.ToString("##") + " de la lista.";
            }
        }

        private void btActualizar_Click(object sender, EventArgs e)
        {
            System.Int32 i = ListaPrecio.BuscaPorNombre(txtProducto.Text);
            if (i == -1)
            {
                lblSalida.Text = "Producto no encontrado";
            }
            else
            {
                ListaPrecio.Precio[i-1] = System.Convert.ToDecimal(txtPrecio.Text);
                lblSalida.Text = "Producto actualizado!!!!!!";

            }
        }
    }
}
