using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Abstracciones.Modelos
{
    public class Restaurante
    {
        public Guid idRestaurante { get; set; }

        [Required(ErrorMessage = "El nombre del restaurante es requerido")]
        public string nombre { get; set; }

        [Required(ErrorMessage = "La direccion del restaurante es requerida")]
        public string direccion { get; set; }

        public string latitud { get; set; }

        public string longitud { get; set; }

        public string urlFotoPerfil { get; set; }

        public string urlPaginaRestaurante { get; set; }

        public decimal puntuacion { get; set; }

        public DateTime fechaCreacion { get; set; }

        public int idEstado { get; set; }
    }
}