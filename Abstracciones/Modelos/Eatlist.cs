using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Abstracciones.Modelos
{
    public class Eatlist
    {
        public Guid idUsuario { get; set; }
        public Guid idRestaurante { get; set; }
        public string flag { get; set; }
        public DateTime fechaCreacion { get; set; }
    }
}