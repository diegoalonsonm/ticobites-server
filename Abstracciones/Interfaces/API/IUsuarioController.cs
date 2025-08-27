using Abstracciones.Modelos;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Abstracciones.Interfaces.API
{
    public interface IUsuarioController
    {
        Task<IActionResult> ObtenerTodosUsuarios();
        Task<IActionResult> ObtenerUsuarioPorId(Guid idUsuario);
        Task<IActionResult> CrearUsuario(Usuario usuario);
        Task<IActionResult> ActualizarUsuario(Guid idUsuario, Usuario usuario);
        Task<IActionResult> EliminarUsuario(Guid idUsuario);
    }
}
