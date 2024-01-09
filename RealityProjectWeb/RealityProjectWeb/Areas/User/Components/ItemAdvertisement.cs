using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using RealityProject.DataAccess.DataModels.Adds;

namespace RealityProjectWeb.Areas.User.Components
{
    public class ItemAdvertisement : ViewComponent
    {
        public IViewComponentResult Invoke(Advertisement item,bool fullImage = false)
        {
            if (fullImage)
            {
                Random a = new Random();

                ViewBag.random = a.Next(0, item.Gallery.Count);
                return View("FullImage",item);
            }

            return View(item);
        }
    }

}
