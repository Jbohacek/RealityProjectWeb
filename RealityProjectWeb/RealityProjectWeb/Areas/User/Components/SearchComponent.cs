using System.Text.Json;
using Microsoft.AspNetCore.Mvc;
using RealityProject.DataAccess.DataModels.Adds;
using RealityProjectWeb.Areas.User.Models;

namespace RealityProjectWeb.Areas.User.Components
{
    public class SearchComponent : ViewComponent
    {
        public IViewComponentResult Invoke(SearchModel item)
        {
            return View(item);
        }
    }
}
