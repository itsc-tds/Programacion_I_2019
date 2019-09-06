using System;

namespace ABMLista.Clases
{
    public class ListaObjetos

    {
        #region PROPIEDADES
        private Alumnos[] lista = new Alumnos[1];
        private int ProximaPosicion = 0;
        #endregion

        #region CONSTRUCTOR
        #endregion

        #region METODOS
        public bool Agregar(Alumnos aTexto)
        {
            bool Resp = false;
            try
            {
                if (ProximaPosicion == lista.Length)
                {
                    this.AgregaRegistro(1);
                }

                lista[ProximaPosicion] = aTexto;
                ProximaPosicion++;
                Resp = true;
            }
            catch (Exception err)
            {
                throw err;
            }

            return Resp;
        }

        public string MostrarLista()
        {
            string Respuesta = "";
            if (ProximaPosicion > 0)
            {
                Respuesta = lista[0].Apellido + ", " + lista[0].Nombre;
                for (int i = 1; i < ProximaPosicion; i++)
                {
                    Alumnos alumno = lista[i];
                    Respuesta = Respuesta + "\r\n" + alumno.Apellido + ", " + alumno.Nombre + ": " + alumno.Notas[0];
                }
            }
            return Respuesta;
        }

        private void AgregaRegistro(int incremento)
        {
            Alumnos[] Temp = new Alumnos[lista.Length + incremento];
            lista = this.Copiar(lista, Temp);
        }

        private Alumnos[] Copiar(Alumnos[] Origen, Alumnos[] Destino)
        {
            for (int i = 0; i < ProximaPosicion; i++)
            {
                Destino[i] = Origen[i];
            }
            return Destino;
        }

        public void Modificar(int posicion, string nombre, string apellido)
        {
            for (int i = 0; i < lista.Length; i++)
            {
                if (posicion==(lista[i].Id))
                {
                    Alumnos alumnoEncontrado = lista[i];
                    alumnoEncontrado.Nombre = nombre;
                    alumnoEncontrado.Apellido = apellido;
                    lista[i] = alumnoEncontrado;
                }

            }
        }

        /// <summary>
        /// Devuelve la posicion del texto (entero) dentro del arregla, <br/>
        /// la cuenta inicia en 0 (cero).
        /// Devuelve -1 cuando no encuentra Que en la lista.
        /// </summary>
        /// <param name="Que">texto completo a buscar en la lista</param>
        public int BuscarPosicion(string Que)
        {
            int Resp = -1;

            for (int i = 0; i < lista.Length; i++)
            {
                if ((lista[i].Apellido + ", " + lista[i].Nombre).CompareTo(Que) == 0)
                {
                    Resp = i;
                    break;
                }
            }

            return Resp;
        }

        public string Borrar(string Que)
        {
            string Resp = "";
            int Pos = this.BuscarPosicion(Que);
            if (Pos == -1)
            {
                Resp = Que + " no ha sido encontrado en la lista.";
            }
            else
            {
                for (int i = Pos; i < ProximaPosicion - 1; i++)
                {
                    this.lista[i] = this.lista[i + 1];
                }
                this.lista[ProximaPosicion - 1] = null;
                ProximaPosicion = ProximaPosicion - 1;
                AgregaRegistro(-1);
            }

            return Resp;
        }

        public string Ordenar()
        {
            string salida = "";
            Alumnos[] copia = new Alumnos[lista.Length];
            Copiar(lista, copia);
            if (copia.Length > 1)
            {
                for (int j = 0; j < copia.Length; j++)
                {
                    for (int i = 0; i < copia.Length; i++)
                    {
                        try
                        {
                            if ((copia[i].Apellido + ", " + copia[i].Nombre).CompareTo(copia[i + 1].Apellido + ", " + copia[i + 1].Nombre) == 1)
                            {
                                //El que sigue es mayor
                                Alumnos Temp = copia[i];
                                copia[i] = copia[i + 1];
                                copia[i + 1] = Temp;

                            }
                        }
                        catch (IndexOutOfRangeException)
                        {
                            Console.WriteLine("Finalizo la revision de la lista");
                        }
                    }

                }
            }
            for (int i = 0; i < copia.Length; i++)
            {
                Alumnos alumno = copia[i];
                salida = salida + (alumno.Apellido + ", " + alumno.Nombre + ": " + alumno.Notas[0] + "\r\n");
            }

            return salida;
        }
        #endregion
    }
}
