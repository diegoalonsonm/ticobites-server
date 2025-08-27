using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Abstracciones.Modelos.Servicios
{
    public class ApiEndpoint
    {
        public string? urlBase { get; set; }
        public IEnumerable<Metodo>? metodos { get; set; }
    }

    public class Metodo
    {
        public string? nombre { get; set; }
        public string? valor { get; set; }
    }
}