using Abstracciones.Modelos;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Abstracciones.Interfaces.API
{
    public interface IEstadoController
    {
        Task<IActionResult> ObtenerEstados();
        Task<IActionResult> ObtenerEstadoPorId(int idEstado);
        Task<IActionResult> CrearEstado(Estado estado);
        Task<IActionResult> ActualizarEstado(int idEstado, Estado estado);
        Task<IActionResult> EliminarEstado(int idEstado);
    }
}
