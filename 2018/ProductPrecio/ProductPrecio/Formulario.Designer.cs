namespace ProductPrecio
{
    partial class Formulario
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
            this.btAgregar = new System.Windows.Forms.Button();
            this.txtProducto = new System.Windows.Forms.TextBox();
            this.txtPrecio = new System.Windows.Forms.TextBox();
            this.lblSalida = new System.Windows.Forms.Label();
            this.btListarOrdenado = new System.Windows.Forms.Button();
            this.btMostrar = new System.Windows.Forms.Button();
            this.btActualizar = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // btAgregar
            // 
            this.btAgregar.Location = new System.Drawing.Point(200, 40);
            this.btAgregar.Name = "btAgregar";
            this.btAgregar.Size = new System.Drawing.Size(92, 23);
            this.btAgregar.TabIndex = 2;
            this.btAgregar.Text = "&Agregar";
            this.btAgregar.UseVisualStyleBackColor = true;
            this.btAgregar.Click += new System.EventHandler(this.btAgregar_Click);
            // 
            // txtProducto
            // 
            this.txtProducto.Location = new System.Drawing.Point(13, 13);
            this.txtProducto.Name = "txtProducto";
            this.txtProducto.Size = new System.Drawing.Size(175, 20);
            this.txtProducto.TabIndex = 0;
            this.txtProducto.Enter += new System.EventHandler(this.txtProducto_Enter);
            // 
            // txtPrecio
            // 
            this.txtPrecio.Location = new System.Drawing.Point(200, 12);
            this.txtPrecio.Name = "txtPrecio";
            this.txtPrecio.Size = new System.Drawing.Size(92, 20);
            this.txtPrecio.TabIndex = 1;
            this.txtPrecio.Enter += new System.EventHandler(this.txtPrecio_Enter);
            // 
            // lblSalida
            // 
            this.lblSalida.AutoSize = true;
            this.lblSalida.Location = new System.Drawing.Point(13, 40);
            this.lblSalida.Name = "lblSalida";
            this.lblSalida.Size = new System.Drawing.Size(0, 13);
            this.lblSalida.TabIndex = 5;
            // 
            // btListarOrdenado
            // 
            this.btListarOrdenado.Location = new System.Drawing.Point(200, 69);
            this.btListarOrdenado.Name = "btListarOrdenado";
            this.btListarOrdenado.Size = new System.Drawing.Size(92, 23);
            this.btListarOrdenado.TabIndex = 4;
            this.btListarOrdenado.Text = "Listar Ordenado";
            this.btListarOrdenado.UseVisualStyleBackColor = true;
            this.btListarOrdenado.Click += new System.EventHandler(this.btListarOrdenado_Click);
            // 
            // btMostrar
            // 
            this.btMostrar.Location = new System.Drawing.Point(200, 98);
            this.btMostrar.Name = "btMostrar";
            this.btMostrar.Size = new System.Drawing.Size(92, 23);
            this.btMostrar.TabIndex = 6;
            this.btMostrar.Text = "Mostrar";
            this.btMostrar.UseVisualStyleBackColor = true;
            this.btMostrar.Click += new System.EventHandler(this.btMostrar_Click);
            // 
            // btActualizar
            // 
            this.btActualizar.Location = new System.Drawing.Point(200, 127);
            this.btActualizar.Name = "btActualizar";
            this.btActualizar.Size = new System.Drawing.Size(92, 23);
            this.btActualizar.TabIndex = 7;
            this.btActualizar.Text = "Actualizar";
            this.btActualizar.UseVisualStyleBackColor = true;
            this.btActualizar.Click += new System.EventHandler(this.btActualizar_Click);
            // 
            // Formulario
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(314, 261);
            this.Controls.Add(this.btActualizar);
            this.Controls.Add(this.btMostrar);
            this.Controls.Add(this.btListarOrdenado);
            this.Controls.Add(this.lblSalida);
            this.Controls.Add(this.txtPrecio);
            this.Controls.Add(this.txtProducto);
            this.Controls.Add(this.btAgregar);
            this.Name = "Formulario";
            this.Text = "Form1";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btAgregar;
        private System.Windows.Forms.TextBox txtProducto;
        private System.Windows.Forms.TextBox txtPrecio;
        private System.Windows.Forms.Label lblSalida;
        private System.Windows.Forms.Button btListarOrdenado;
        private System.Windows.Forms.Button btMostrar;
        private System.Windows.Forms.Button btActualizar;
    }
}

