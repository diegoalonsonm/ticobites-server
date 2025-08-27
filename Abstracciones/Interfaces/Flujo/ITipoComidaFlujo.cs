﻿using Abstracciones.Modelos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Abstracciones.Interfaces.Flujo
{
    public interface ITipoComidaFlujo
    {
        Task<IEnumerable<TipoComida>> ObtenerTiposComida();
        Task<TipoComida> ObtenerTipoComidaPorId(Guid idTipoComida);
        Task<int> CrearTipoComida(TipoComida tipoComida);
        Task<int> ActualizarTipoComida(int idTipoComida, TipoComida tipoComida);
        Task<int> EliminarTipoComida(int idTipoComida);
    }
}
