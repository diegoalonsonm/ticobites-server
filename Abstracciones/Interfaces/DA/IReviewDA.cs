using Abstracciones.Modelos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Abstracciones.Interfaces.DA
{
    public interface IReviewDA
    {
        Task<IEnumerable<Review>> ObtenerReviews();
        Task<Review> ObtenerReviewPorId(Guid idReview);
        Task<Guid> CrearReview(Review review);
        Task<Guid> ActualizarReview(Guid idReview, Review review);
        Task<Guid> EliminarReview(Guid idReview);
    }
}
