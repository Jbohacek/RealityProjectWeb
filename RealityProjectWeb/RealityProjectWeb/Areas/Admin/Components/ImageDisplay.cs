using Microsoft.AspNetCore.Mvc;
using RealityProject.DataAccess.DataModels.Adds;
using RealityProject.DataAccess.DataModels.Images;
using RealityProject.DataAccess.Enums;

namespace RealityProjectWeb.Areas.Admin.Components
{
    public class ImageDisplay : ViewComponent
    {
        public IViewComponentResult Invoke(Photo item)
        {
            return View(item);
        }
    }
}
