namespace EjemploMatriz2
{
    partial class frmListaAlumnos
    {
        /// <summary>
        /// Variable del diseñador requerida.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Limpiar los recursos que se estén utilizando.
        /// </summary>
        /// <param name="disposing">true si los recursos administrados se deben eliminar; false en caso contrario, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Código generado por el Diseñador de Windows Forms

        /// <summary>
        /// Método necesario para admitir el Diseñador. No se puede modificar
        /// el contenido del método con el editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            this.txtAlumno = new System.Windows.Forms.TextBox();
            this.lblSalida = new System.Windows.Forms.Label();
            this.btAceptar = new System.Windows.Forms.Button();
            this.btBuscarNom = new System.Windows.Forms.Button();
            this.btBuscarPos = new System.Windows.Forms.Button();
            this.btCargaMateria = new System.Windows.Forms.Button();
            this.txtMateria = new System.Windows.Forms.TextBox();
            this.lblMateria = new System.Windows.Forms.Label();
            this.btBorraAlumno = new System.Windows.Forms.Button();
            this.btPrueba = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // txtAlumno
            // 
            this.txtAlumno.Location = new System.Drawing.Point(13, 13);
            this.txtAlumno.Name = "txtAlumno";
            this.txtAlumno.Size = new System.Drawing.Size(178, 20);
            this.txtAlumno.TabIndex = 0;
            this.txtAlumno.TextChanged += new System.EventHandler(this.txtAlumno_TextChanged);
            this.txtAlumno.KeyDown += new System.Windows.Forms.KeyEventHandler(this.txtAlumno_KeyDown);
            // 
            // lblSalida
            // 
            this.lblSalida.AutoSize = true;
            this.lblSalida.Location = new System.Drawing.Point(12, 49);
            this.lblSalida.Name = "lblSalida";
            this.lblSalida.Size = new System.Drawing.Size(0, 13);
            this.lblSalida.TabIndex = 6;
            // 
            // btAceptar
            // 
            this.btAceptar.Location = new System.Drawing.Point(197, 10);
            this.btAceptar.Name = "btAceptar";
            this.btAceptar.Size = new System.Drawing.Size(115, 23);
            this.btAceptar.TabIndex = 1;
            this.btAceptar.Text = "Cargar Alumnos";
            this.btAceptar.UseVisualStyleBackColor = true;
            this.btAceptar.Click += new System.EventHandler(this.btAceptar_Click);
            // 
            // btBuscarNom
            // 
            this.btBuscarNom.Location = new System.Drawing.Point(197, 40);
            this.btBuscarNom.Name = "btBuscarNom";
            this.btBuscarNom.Size = new System.Drawing.Size(115, 23);
            this.btBuscarNom.TabIndex = 0;
            this.btBuscarNom.Text = "Buscar por Nombre";
            this.btBuscarNom.UseVisualStyleBackColor = true;
            this.btBuscarNom.Click += new System.EventHandler(this.btBuscarNom_Click);
            // 
            // btBuscarPos
            // 
            this.btBuscarPos.Location = new System.Drawing.Point(197, 69);
            this.btBuscarPos.Name = "btBuscarPos";
            this.btBuscarPos.Size = new System.Drawing.Size(115, 23);
            this.btBuscarPos.TabIndex = 4;
            this.btBuscarPos.Text = "Buscar por Posicion";
            this.btBuscarPos.UseVisualStyleBackColor = true;
            this.btBuscarPos.Click += new System.EventHandler(this.btBuscarPos_Click);
            // 
            // btCargaMateria
            // 
            this.btCargaMateria.Location = new System.Drawing.Point(196, 144);
            this.btCargaMateria.Name = "btCargaMateria";
            this.btCargaMateria.Size = new System.Drawing.Size(115, 23);
            this.btCargaMateria.TabIndex = 3;
            this.btCargaMateria.Text = "Cargar Materia";
            this.btCargaMateria.UseVisualStyleBackColor = true;
            this.btCargaMateria.Click += new System.EventHandler(this.btCargaMateria_Click);
            // 
            // txtMateria
            // 
            this.txtMateria.Location = new System.Drawing.Point(12, 147);
            this.txtMateria.Name = "txtMateria";
            this.txtMateria.Size = new System.Drawing.Size(178, 20);
            this.txtMateria.TabIndex = 2;
            // 
            // lblMateria
            // 
            this.lblMateria.AutoSize = true;
            this.lblMateria.Location = new System.Drawing.Point(12, 182);
            this.lblMateria.Name = "lblMateria";
            this.lblMateria.Size = new System.Drawing.Size(0, 13);
            this.lblMateria.TabIndex = 7;
            // 
            // btBorraAlumno
            // 
            this.btBorraAlumno.Location = new System.Drawing.Point(197, 98);
            this.btBorraAlumno.Name = "btBorraAlumno";
            this.btBorraAlumno.Size = new System.Drawing.Size(115, 23);
            this.btBorraAlumno.TabIndex = 5;
            this.btBorraAlumno.Text = "Borrar Alumno";
            this.btBorraAlumno.UseVisualStyleBackColor = true;
            this.btBorraAlumno.Click += new System.EventHandler(this.btBorraAlumno_Click);
            // 
            // btPrueba
            // 
            this.btPrueba.Location = new System.Drawing.Point(100, 195);
            this.btPrueba.Name = "btPrueba";
            this.btPrueba.Size = new System.Drawing.Size(115, 23);
            this.btPrueba.TabIndex = 8;
            this.btPrueba.Text = "Prueba";
            this.btPrueba.UseVisualStyleBackColor = true;
            this.btPrueba.Click += new System.EventHandler(this.btPrueba_Click);
            // 
            // frmListaAlumnos
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(317, 261);
            this.Controls.Add(this.btPrueba);
            this.Controls.Add(this.btBorraAlumno);
            this.Controls.Add(this.lblMateria);
            this.Controls.Add(this.btCargaMateria);
            this.Controls.Add(this.txtMateria);
            this.Controls.Add(this.btBuscarPos);
            this.Controls.Add(this.btBuscarNom);
            this.Controls.Add(this.btAceptar);
            this.Controls.Add(this.lblSalida);
            this.Controls.Add(this.txtAlumno);
            this.Name = "frmListaAlumnos";
            this.Text = "Lista Alumnos";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox txtAlumno;
        private System.Windows.Forms.Label lblSalida;
        private System.Windows.Forms.Button btAceptar;
        private System.Windows.Forms.Button btBuscarNom;
        private System.Windows.Forms.Button btBuscarPos;
        private System.Windows.Forms.Button btCargaMateria;
        private System.Windows.Forms.TextBox txtMateria;
        private System.Windows.Forms.Label lblMateria;
        private System.Windows.Forms.Button btBorraAlumno;
        private System.Windows.Forms.Button btPrueba;
    }
}

