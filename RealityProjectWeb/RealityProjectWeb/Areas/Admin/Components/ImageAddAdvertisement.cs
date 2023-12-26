using Microsoft.AspNetCore.Mvc;
using RealityProject.DataAccess.DataModels.Adds;
using RealityProject.DataAccess.DataModels.Images;
using RealityProject.DataAccess.Enums;
using RealityProjectWeb.Areas.Admin.Models;

namespace RealityProjectWeb.Areas.Admin.Components
{
    public class ImageAddAdvertisement : ViewComponent
    {
        public IViewComponentResult Invoke(Advertisement item)
        {


            return View(item);
        }
    }
}
