using Abstracciones.Modelos;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Abstracciones.Interfaces.API
{
    public interface ITipoComidaController
    {
        Task<IActionResult> ObtenerTiposComida();
        Task<IActionResult> ObtenerTipoComidaPorId(Guid idTipoComida);
        Task<IActionResult> CrearTipoComida(TipoComida tipoComida);
        Task<IActionResult> ActualizarTipoComida(int idTipoComida, TipoComida tipoComida);
        Task<IActionResult> EliminarTipoComida(int idTipoComida);
    }
}