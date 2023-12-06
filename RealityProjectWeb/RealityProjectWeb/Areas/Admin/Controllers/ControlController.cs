using Microsoft.AspNetCore.Mvc;
using RealityProject.DataAccess.Repository;
using RealityProjectWeb.Models;

namespace RealityProjectWeb.Areas.Admin.Controllers
{
    [Area("Admin"),Secured]
    public class ControlController : BaseController
    {
        private readonly UnitOfWork _unitOfWork;

        public ControlController(UnitOfWork unitOfWork)
        {
            _unitOfWork = unitOfWork;
        }

        public IActionResult Index()
        {
            return View();
        }

        public IActionResult Inzeraty()
        {
            return View(_unitOfWork.Advertisements.GetAll());
        }
    }
}
