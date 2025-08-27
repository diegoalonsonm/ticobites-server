using Abstracciones.Modelos;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Abstracciones.Interfaces.API
{
    public interface IRestauranteController
    {
        Task<IActionResult> ObtenerTodosRestaurantes();
        Task<IActionResult> ObtenerRestaurantePorId(Guid idRestaurante);
        Task<IActionResult> CrearRestaurante(Restaurante restaurante);
        Task<IActionResult> ActualizarRestaurante(Guid idRestaurante, Restaurante restaurante);
        Task<IActionResult> EliminarRestaurante(Guid idRestaurante);
    }
}
