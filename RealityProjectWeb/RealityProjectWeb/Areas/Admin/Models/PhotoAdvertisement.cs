using RealityProject.DataAccess.DataModels.Adds;
using RealityProject.DataAccess.DataModels.Images;

namespace RealityProjectWeb.Areas.Admin.Models
{
    public class PhotoAdvertisement
    {
        public Photo Photo { get; set; } = null!;
        public Guid Advertisement { get; set; }
    }
}
