using Microsoft.AspNetCore.Mvc;
using RealityProject.DataAccess.DataModels.Parameters;

namespace RealityProjectWeb.Areas.Admin.Components
{
    public class GroupEdit : ViewComponent
    {
        public IViewComponentResult Invoke(Group item)
        {
            return View(item);
        }
    }
}
