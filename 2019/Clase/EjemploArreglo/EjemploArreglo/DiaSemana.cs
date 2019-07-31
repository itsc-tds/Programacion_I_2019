using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace EjemploArreglo
{
    public class DiaSemana
    {
        public String[] Dias =
        {
            "lunes",
            "martes",
            "miércoles" ,
            "jueves" ,
            "viernes" ,
            "sábado" ,
            "domingo",
            "osvaldo"
        };

        public string DiasSemana()
        {
            System.String mRespuesta = "Los días de la semana son:\r\n";

            for (System.Int32 i = 0; i < Dias.Length; i++)
            {
                mRespuesta = mRespuesta + Dias[i] + "\r\n";
            }
            return mRespuesta;

        }
    }
}
