using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace PersistenciaDeDatos
{
   public partial class Form1 : Form
   {
       private System.Data.DataTable oTabla = new DataTable();

      public Form1()
      {
         InitializeComponent();
         oTabla.TableName = "persona";
         oTabla.Columns.Add("nombre");
         oTabla.Columns.Add("edad");
         oTabla.Columns.Add("domicilio");
      }

      private void btLeerArchivo_Click(Object sender, EventArgs e)
      {
         if (!System.IO.File.Exists(@"clientes.xml"))
         {
            label1.Text = "No existe archivo cliente.xml";
         }
         else
         {
            oTabla.Clear();

            oTabla.ReadXml(@"clientes.xml");
            label1.Text = "";
            foreach (System.Data.DataRow oFila in oTabla.Rows)
            {
               System.String mNombre = oFila["nombre"].ToString();
               System.Int32 edad = System.Convert.ToInt32(oFila["edad"].ToString());
               System.String mDomicilio = oFila["domicilio"].ToString();

               label1.Text = label1.Text + mNombre + " - " + edad + " - " + mDomicilio + "\r\n";
            }
         }
      }

      private void btGrabar_Click(object sender, EventArgs e)
      {
          oTabla.Rows.Add();

          oTabla.Rows[oTabla.Rows.Count - 1]["nombre"]    = txtNombre.Text;
          oTabla.Rows[oTabla.Rows.Count - 1]["edad"] = txtEdad.Text;
          oTabla.Rows[oTabla.Rows.Count - 1]["domicilio"] = txtDomicilio.Text;

          //oTabla.Rows.Add();
          //oTabla.Rows[1][0] = txtNombre.Text;
          //oTabla.Rows[1][1] = txtEdad.Text;
          //oTabla.Rows[1][2] = txtDomicilio.Text;

          oTabla.WriteXml(@"clientes.xml");
          
      }
   }
}
