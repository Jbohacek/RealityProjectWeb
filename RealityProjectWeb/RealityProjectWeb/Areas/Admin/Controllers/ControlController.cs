using Microsoft.AspNetCore.Mvc;
using RealityProjectWeb.Models;

namespace RealityProjectWeb.Areas.Admin.Controllers
{
    [Area("Admin"),Secured]
    public class ControlController : BaseController
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
