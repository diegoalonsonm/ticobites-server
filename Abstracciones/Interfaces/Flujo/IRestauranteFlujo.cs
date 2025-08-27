using Abstracciones.Modelos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Abstracciones.Interfaces.Flujo
{
    public interface IRestauranteFlujo
    {
        Task<IEnumerable<Restaurante>> ObtenerTodosRestaurantes();
        Task<Restaurante> ObtenerRestaurantePorId(Guid idRestaurante);
        Task<Guid> CrearRestaurante(Restaurante restaurante);
        Task<Guid> ActualizarRestaurante(Guid idRestaurante, Restaurante restaurante);
        Task<Guid> EliminarRestaurante(Guid idRestaurante);
    }
}
