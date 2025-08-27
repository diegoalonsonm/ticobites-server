using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Abstracciones.Modelos
{
    public class ListaItem
    {
        public Guid idLista { get; set; }
        public Guid idRestaurante { get; set; }
        public Guid idUsuarioCreador { get; set; }
        public string nota { get; set; }
        public int posicion { get; set; }
        public DateTime fechaCreacion { get; set; }
    }
}
