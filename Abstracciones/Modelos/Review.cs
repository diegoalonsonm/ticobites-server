using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Abstracciones.Modelos
{
    public class Review
    {
        public Guid idReview { get; set; }

        [Required(ErrorMessage = "El comentario es requerido")]
        public string comentario { get; set; }

        [Required(ErrorMessage = "La puntuacion")]
        public decimal puntuacion { get; set; }

        public string urlFotoReview { get; set; }

        public DateTime fechaCreacion { get; set; }

        public Guid idUsuario { get; set; }

        public int idRestaurante { get; set; }

        public int idEstado { get; set; }
    }
}
