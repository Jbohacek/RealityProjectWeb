using Microsoft.AspNetCore.Mvc;
using RealityProject.DataAccess.DataModels.Adds;
using RealityProject.DataAccess.DataModels.Images;
using RealityProject.DataAccess.Enums;

namespace RealityProjectWeb.Areas.Admin.Components
{
    public class ImageAddAdvertisement : ViewComponent
    {
        public IViewComponentResult Invoke(Advertisement item)
        {
            Photo addPhoto = new Photo()
            {
                AdvertisementId = item.Id,
                Id = Guid.NewGuid(),
                Type = PhotoTypes.Gallery
            };

            return View(addPhoto);
        }
    }
}
