using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Abstracciones.Modelos
{
    public class Usuario
    {
        public Guid idUsuario { get; set; }

        [Required(ErrorMessage = "El nombre es requerido")]
        public string nombre { get; set; }

        [Required(ErrorMessage = "El apellido es requerido")]
        public string primerApellido { get; set; }

        [Required(ErrorMessage = "El apellido es requerido")]
        public string segundoApellido { get; set; }

        [Required(ErrorMessage = "El correo es requerido")]
        public string correo { get; set; }

        public string telefono { get; set; }

        public string urlFotoPerfil { get; set; }

        public string bio { get; set; }

        public DateTime fechaCreacion { get; set; }

        public int idEstado { get; set; }

        public DateTime fechaNacimiento { get; set; }
    }
}