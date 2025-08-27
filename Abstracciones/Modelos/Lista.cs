using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Abstracciones.Modelos
{
    public class Lista
    {
        public Guid idLista { get; set; }

        [Required(ErrorMessage="El nombre de la lista es requerido")]
        public string nombre { get; set; }

        public bool esPrivada { get; set; } 

        public bool esColaborativa { get; set; }

        public DateTime fechaCreacion { get; set; }

        public Guid idUsuario { get; set; }

        public int idEstado { get; set; }
    }
}
