using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Abstracciones.Interfaces.Flujo
{
    public interface IEatlistFlujo
    {
        Task<IEnumerable<Guid>> AgregarEatlist(Guid idUsuario, Guid idRestaurante);
        Task<IEnumerable<Guid>> RemoverDeEatlist(Guid idUsuario, Guid idRestaurante);
        Task<IEnumerable<Guid>> ObtenerEatlistPorUsuario(Guid idUsuario);
    }
}