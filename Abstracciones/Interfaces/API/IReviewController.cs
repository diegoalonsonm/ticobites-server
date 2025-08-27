using Abstracciones.Modelos;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Abstracciones.Interfaces.API
{
    public interface IReviewController
    {
        Task<IActionResult> ObtenerReviews();
        Task<IActionResult> ObtenerReviewPorId(Guid idReview);
        Task<IActionResult> CrearReview(Review review);
        Task<IActionResult> ActualizarReview(Guid idReview, Review review);
        Task<IActionResult> EliminarReview(Guid idReview);
    }
}
