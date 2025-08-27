using Abstracciones.Modelos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Abstracciones.Interfaces.DA
{
    public interface IUsuarioDA
    {
        Task<IEnumerable<Usuario>> ObtenerTodosUsuarios();
        Task<Usuario> ObtenerUsuarioPorId(Guid idUsuario);
        Task<Guid> CrearUsuario(Usuario usuario);
        Task<Guid> ActualizarUsuario (Guid idUsuario, Usuario usuario);
        Task<Guid> EliminarUsuario (Guid idUsuario);
    }
}