namespace ProductPrecio
{
    public class Producto
    {
        public System.String[] Nombre = new System.String[0];
        public System.Decimal[] Precio = new System.Decimal[0];

        System.Int32 CantElem = 0;

        /// <summary>
        /// Carga un elemento nuevo a la lista
        /// </summary>
        /// <param name="aNombre">Elemento a cargar en la lista</param>
        /// <param name="aPrecio">Precio del elemento en string</param>
        public System.String CargarLista(System.String aNombre,
                                         System.String aPrecio)
        {
            System.Decimal mPrecio;
            try
            {
                if (aNombre.Trim() == "")
                {
                    throw new System.Exception("Falta nombre del producto");
                }
                mPrecio = System.Convert.ToDecimal(aPrecio);
            }
            catch (System.Exception err)
            {
                throw err;
            }
            return this.CargarLista(aNombre, mPrecio);
        }

        /// <summary>
        /// (sobrecarga) carga un elemento nuevo a la lista
        /// </summary>
        /// <param name="aNombre">Elemento a cargar en la lista</param>
        /// <param name="aPrecio">Precio del elemento en decimal</param>
        public System.String CargarLista(System.String aNombre,
                                         System.Decimal mPrecio)
        {
            System.String mRes = "";
            try
            {
                
                if (CantElem == Nombre.Length)
                {
                    Nombre = RedimensionarStr(Nombre);
                    Precio = RedimensionarDec(Precio);
                }
                if (BuscaPorNombre(aNombre) == -1)
                {
                    Nombre[CantElem] = aNombre;
                    Precio[CantElem] = mPrecio;
                    CantElem++;
                    
                    mRes = Listado();
                }
                else
                {
                    mRes = "El elemento " + aNombre + " ya existe";
                }
            }
            catch (System.Exception err)
            {
                throw err;
            }
            return mRes;
        }

        /// <summary>
        /// devuelve la posicion donde se encuentra un elemento dentro de la lista, 
        /// si el valor devuelto es -1 significa que no se encontro
        /// </summary>
        /// <param name="aElemento">elemnto a buscar en la lista</param>
        /// <returns></returns>
        public System.Int32 BuscaPorNombre(System.String aElemento)
        {
            System.Int32 mREs = -1;

            for (int i = 0; i < Nombre.Length; i++)
            {
                if (Nombre[i] == aElemento)
                {
                    mREs = i + 1;
                    break;
                }
            }
            return mREs;
        }

        /// <summary>
        /// Agrega un elemento null al final  de una lista tipo string
        /// </summary>
        /// <param name="aLista">Lista de string a redimensionar</param>
        private System.String[] RedimensionarStr(System.String[] aLista)
        {
            System.String[] Res = new System.String[aLista.Length + 1];
            System.Int32 j = 0;
            foreach (System.String mElemento in aLista)
            {
                Res[j] = mElemento;
                j++;
            }

            return Res;
        }

        /// <summary>
        /// Agrega un elemento null al final  de una lista tipo decimal
        /// </summary>
        /// <param name="aLista">Lista de descimal a redimensionar</param>
        /// <returns></returns>
        private System.Decimal[] RedimensionarDec(System.Decimal[] aLista)
        {
            System.Decimal[] Res = new System.Decimal[aLista.Length + 1];
            System.Int32 j = 0;
            foreach (System.Decimal mElemento in aLista)
            {
                Res[j] = mElemento;
                j++;
            }

            return Res;
        }

        /// <summary>
        /// Ordena matrices coordinadas de nombre y precio
        /// </summary>
        public string Ordenar()
        {
            for (int i = 0; i < this.Nombre.Length - 1; i++)
            {
                for (int j = 0; j < this.Nombre.Length - 1; j++)
                {
                    if (this.Nombre[j].CompareTo(this.Nombre[j + 1]) > 0)
                    {
                        string auxString = this.Nombre[j];
                        decimal auxDecimal = this.Precio[j];
                        this.Nombre[j] = this.Nombre[j + 1];
                        this.Nombre[j + 1] = auxString;

                        this.Precio[j] = this.Precio[j + 1];
                        this.Precio[j + 1] = auxDecimal;
                    }
                }
            }
            
            return this.Listado();
        }

        /// <summary>
        /// devuelve en un string los elemntos de las lista de las matrices de la clase
        /// </summary>
        public System.String Listado()
        {
            System.Int32 j = 0;
            System.String Res = "Productos:\r\n";
            Res = Res + "Precio     Productos:\r\n";
            if (this.Nombre.Length == 0)
            {
                Res = Res + "No existen productos.";
            }
            else
            {
                foreach (System.String mElemento in this.Nombre)
                {
                    if (mElemento == null)
                    {
                        break;
                    }
                    Res = Res + this.Precio[j].ToString("##0.00")
                        + " -   "
                        + mElemento + "\r\n";
                    j = j + 1;
                }
            }

            return Res;

        }
    }
}
