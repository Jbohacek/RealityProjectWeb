using Microsoft.AspNetCore.Mvc;
using RealityProject.DataAccess.Repository;
using RealityProjectWeb.Models;

namespace RealityProjectWeb.Areas.Admin.Controllers
{
    [Area("Admin"),Secured]
    public class ControlController : BaseController
    {
        

        public ControlController(UnitOfWork unitOfWork) : base(unitOfWork)
        {
            
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Inzeraty()
        {
            return View(base.Database.Advertisements.GetAll());
        }
    }
}
