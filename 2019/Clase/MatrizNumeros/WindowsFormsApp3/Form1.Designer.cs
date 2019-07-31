namespace MatrizNumeros
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
            this.btAceptar = new System.Windows.Forms.Button();
            this.txt = new System.Windows.Forms.TextBox();
            this.lbl_0_0 = new System.Windows.Forms.Label();
            this.lbl_0_1 = new System.Windows.Forms.Label();
            this.lbl_1_0 = new System.Windows.Forms.Label();
            this.lbl_1_1 = new System.Windows.Forms.Label();
            this.lbl_2_0 = new System.Windows.Forms.Label();
            this.lbl_2_1 = new System.Windows.Forms.Label();
            this.SuspendLayout();
            // 
            // btAceptar
            // 
            this.btAceptar.Location = new System.Drawing.Point(135, 31);
            this.btAceptar.Name = "btAceptar";
            this.btAceptar.Size = new System.Drawing.Size(75, 23);
            this.btAceptar.TabIndex = 0;
            this.btAceptar.Text = "Aceptar";
            this.btAceptar.UseVisualStyleBackColor = true;
            this.btAceptar.Click += new System.EventHandler(this.BtAceptar_Click);
            // 
            // txt
            // 
            this.txt.Location = new System.Drawing.Point(29, 31);
            this.txt.Name = "txt";
            this.txt.Size = new System.Drawing.Size(100, 20);
            this.txt.TabIndex = 1;
            // 
            // lbl_0_0
            // 
            this.lbl_0_0.AutoSize = true;
            this.lbl_0_0.Location = new System.Drawing.Point(30, 67);
            this.lbl_0_0.Name = "lbl_0_0";
            this.lbl_0_0.Size = new System.Drawing.Size(0, 13);
            this.lbl_0_0.TabIndex = 2;
            // 
            // lbl_0_1
            // 
            this.lbl_0_1.AutoSize = true;
            this.lbl_0_1.Location = new System.Drawing.Point(94, 67);
            this.lbl_0_1.Name = "lbl_0_1";
            this.lbl_0_1.Size = new System.Drawing.Size(0, 13);
            this.lbl_0_1.TabIndex = 3;
            // 
            // lbl_1_0
            // 
            this.lbl_1_0.AutoSize = true;
            this.lbl_1_0.Location = new System.Drawing.Point(30, 84);
            this.lbl_1_0.Name = "lbl_1_0";
            this.lbl_1_0.Size = new System.Drawing.Size(0, 13);
            this.lbl_1_0.TabIndex = 4;
            // 
            // lbl_1_1
            // 
            this.lbl_1_1.AutoSize = true;
            this.lbl_1_1.Location = new System.Drawing.Point(97, 84);
            this.lbl_1_1.Name = "lbl_1_1";
            this.lbl_1_1.Size = new System.Drawing.Size(0, 13);
            this.lbl_1_1.TabIndex = 5;
            // 
            // lbl_2_0
            // 
            this.lbl_2_0.AutoSize = true;
            this.lbl_2_0.Location = new System.Drawing.Point(30, 101);
            this.lbl_2_0.Name = "lbl_2_0";
            this.lbl_2_0.Size = new System.Drawing.Size(0, 13);
            this.lbl_2_0.TabIndex = 6;
            // 
            // lbl_2_1
            // 
            this.lbl_2_1.AutoSize = true;
            this.lbl_2_1.Location = new System.Drawing.Point(97, 101);
            this.lbl_2_1.Name = "lbl_2_1";
            this.lbl_2_1.Size = new System.Drawing.Size(0, 13);
            this.lbl_2_1.TabIndex = 7;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(265, 153);
            this.Controls.Add(this.lbl_2_1);
            this.Controls.Add(this.lbl_2_0);
            this.Controls.Add(this.lbl_1_1);
            this.Controls.Add(this.lbl_1_0);
            this.Controls.Add(this.lbl_0_1);
            this.Controls.Add(this.lbl_0_0);
            this.Controls.Add(this.txt);
            this.Controls.Add(this.btAceptar);
            this.Name = "Form1";
            this.Text = "Form1";
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Button btAceptar;
        private System.Windows.Forms.TextBox txt;
        private System.Windows.Forms.Label lbl_0_0;
        private System.Windows.Forms.Label lbl_0_1;
        private System.Windows.Forms.Label lbl_1_0;
        private System.Windows.Forms.Label lbl_1_1;
        private System.Windows.Forms.Label lbl_2_0;
        private System.Windows.Forms.Label lbl_2_1;
    }
}

