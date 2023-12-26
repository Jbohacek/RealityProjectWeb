using Microsoft.AspNetCore.Mvc;
using RealityProject.DataAccess.DataModels.Adds;
using RealityProject.DataAccess.DataModels.Images;
using RealityProject.DataAccess.Enums;
using RealityProjectWeb.Areas.Admin.Models;

namespace RealityProjectWeb.Areas.Admin.Components
{
    public class ImageDisplay : ViewComponent
    {
        public IViewComponentResult Invoke(PhotoAdvertisement item)
        {
            return View(item);
        }
    }
}
