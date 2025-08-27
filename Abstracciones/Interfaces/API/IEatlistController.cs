using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Abstracciones.Interfaces.API
{
    public interface IEatlistController
    {
        Task<IActionResult> AgregarEatlist(Guid idUsuario, Guid idRestaurante);
        Task<IActionResult> RemoverDeEatlist(Guid idUsuario, Guid idRestaurante);
        Task<IActionResult> ObtenerEatlistPorUsuario(Guid idUsuario);
    }
}
