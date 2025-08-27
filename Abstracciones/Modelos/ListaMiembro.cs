using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Abstracciones.Modelos
{
    public class ListaMiembro
    {
        public Guid idLista { get; set; }
        public Guid idUsuario { get; set; }
        public int rol { get; set; }
        public DateTime fechaAgregado { get; set; }
    }
}
