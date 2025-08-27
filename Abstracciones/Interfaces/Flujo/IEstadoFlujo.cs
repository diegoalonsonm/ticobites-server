using Abstracciones.Modelos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Abstracciones.Interfaces.Flujo
{
    public interface IEstadoFlujo
    {
        Task<IEnumerable<Estado>> ObtenerEstados();
        Task<Estado> ObtenerEstadoPorId(int idEstado);
        Task<int> CrearEstado(Estado estado);
        Task<int> ActualizarEstado(int idEstado, Estado estado);
        Task<int> EliminarEstado(int idEstado);
    }
}
