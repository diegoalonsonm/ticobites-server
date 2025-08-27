using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Abstracciones.Modelos
{
    public class TipoComida
    {
        public int idTipoComida { get; set; }
        public string nombre { get; set; }
        public DateTime fechaCreacion { get; set; }
        public int idEstado { get; set; }
    }
}
