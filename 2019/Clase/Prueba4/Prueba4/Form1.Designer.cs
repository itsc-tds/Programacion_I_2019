namespace Prueba4
{
    partial class Form1
    {
        /// <summary>
        /// Variable del diseñador necesaria.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Limpiar los recursos que se estén usando.
        /// </summary>
        /// <param name="disposing">true si los recursos administrados se deben desechar; false en caso contrario.</param>
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
        /// el contenido de este método con el editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            this.btPlay = new System.Windows.Forms.Button();
            this.lblRojo = new System.Windows.Forms.Label();
            this.pn1 = new System.Windows.Forms.Panel();
            this.pn1.SuspendLayout();
            this.SuspendLayout();
            // 
            // btPlay
            // 
            this.btPlay.Location = new System.Drawing.Point(577, 450);
            this.btPlay.Name = "btPlay";
            this.btPlay.Size = new System.Drawing.Size(75, 23);
            this.btPlay.TabIndex = 0;
            this.btPlay.Text = "Play";
            this.btPlay.UseVisualStyleBackColor = true;
            this.btPlay.Click += new System.EventHandler(this.BtPlay_Click);
            // 
            // lblRojo
            // 
            this.lblRojo.BackColor = System.Drawing.Color.Red;
            this.lblRojo.Location = new System.Drawing.Point(169, 69);
            this.lblRojo.Name = "lblRojo";
            this.lblRojo.Size = new System.Drawing.Size(22, 22);
            this.lblRojo.TabIndex = 2;
            this.lblRojo.Text = "  ";
            // 
            // pn1
            // 
            this.pn1.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.pn1.Controls.Add(this.lblRojo);
            this.pn1.Location = new System.Drawing.Point(296, 51);
            this.pn1.Name = "pn1";
            this.pn1.Size = new System.Drawing.Size(410, 365);
            this.pn1.TabIndex = 2;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(916, 510);
            this.Controls.Add(this.pn1);
            this.Controls.Add(this.btPlay);
            this.Name = "Form1";
            this.Text = "Form1";
            this.pn1.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btPlay;
        private System.Windows.Forms.Label lblRojo;
        private System.Windows.Forms.Panel pn1;
    }
}

