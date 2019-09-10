using System;
using System.Data;
using System.Windows.Forms;

namespace PersitenciaDatos
{
    public partial class frmABM : Form
    {
        #region PROPIEDADES PRIVADAS
        /// <summary>
        /// Path y nombre del archivo
        /// </summary>
        private const string NombreArchivo = @"personas.xml";

        /// <summary>
        /// Tabla en memoria con la lista de personas
        /// </summary>
        private System.Data.DataTable TablaPersona = new DataTable("TablaPersonas");
        #endregion

        #region CONSTRUCTOR
        public frmABM()
        {
            InitializeComponent();

            ConfiguracionInicial();

        }
        #endregion

        #region EVENTOS
        private void BtAceptar_Click(object sender, EventArgs e)
        {
            // Agrega registro nuevo a la tabla
            TablaPersona.Rows.Add();

            LlenaRegistroTabla();

            LimpiarCampos();

            txtNombre.Focus();
        }

        private void BtGrabar_Click(object sender, EventArgs e)
        {
            TablaPersona.WriteXml(NombreArchivo);
        }
        #endregion

        #region METODOS

        /// <summary>
        /// Diseña columnas del datatable, 
        /// verifica si el archivo existe previamente
        /// asigna tabla al DataGridView
        /// </summary>
        private void ConfiguracionInicial()
        {
            // diseño de la TablaPersona
            TablaPersona.Columns.Add("Nombre");
            TablaPersona.Columns.Add("Domicilio");
            TablaPersona.Columns.Add("DNI");
            TablaPersona.Columns.Add("Edad");

            // busca si el archivo ya existe para precargar sus datos
            if (System.IO.File.Exists(NombreArchivo))
            {
                TablaPersona.ReadXml(NombreArchivo);
            }

            // asigna TablaPersona a dgvPersonas
            dgvPersonas.DataSource = TablaPersona;
            // elimina la posibilidad de ingresar datos en el datagridview
            dgvPersonas.AllowUserToAddRows = false;
            // elimina el encabezado de las filas
            dgvPersonas.RowHeadersVisible=false;
        }

        // Llena con string vacio los texbox
        private void LimpiarCampos()
        {
            txtNombre.Text = "";
            txtDomicilio.Text = "";
            txtEdad.Text = "";
            txtDNI.Text = "";
        }

        /// <summary>
        /// Rellena las columnas del último registro agregado con los valores del textbox correspondiente
        /// </summary>
        private void LlenaRegistroTabla()
        {
            TablaPersona.Rows[TablaPersona.Rows.Count - 1]["Nombre"] = txtNombre.Text;
            TablaPersona.Rows[TablaPersona.Rows.Count - 1]["Domicilio"] = txtDomicilio.Text;
            TablaPersona.Rows[TablaPersona.Rows.Count - 1]["DNI"] = txtDNI.Text;
            TablaPersona.Rows[TablaPersona.Rows.Count - 1]["Edad"] = txtEdad.Text;
        }
        #endregion
    }
}
