using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Abstracciones.Modelos
{
    public class UsuarioBlock
    {
        public Guid idBloqueador { get; set; }
        public Guid idBloqueado { get; set; }
        public DateTime fechaCreacion { get; set; }
    }
}
