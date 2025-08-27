using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Abstracciones.Modelos
{
    public class UsuarioFollow
    {
        public Guid idSeguidor { get; set; }
        public Guid idSeguido { get; set; }
        public int estado { get; set; }
        public DateTime fechaCreacion { get; set; }
        public int idEstado { get; set; }
    }
}
