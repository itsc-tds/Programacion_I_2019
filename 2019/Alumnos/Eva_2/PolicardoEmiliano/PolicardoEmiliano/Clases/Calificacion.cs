using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PolicardoEmiliano.Clases
{
    class Calificacion
    {
        public int Id { get; set; }
        public Materia Materias{ get; set; }
        public string[] Calificaciones { get; set; }
    }
}
