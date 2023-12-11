using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Filters;
using RealityProject.DataAccess.Repository;
using RealityProjectWeb.Models;

namespace RealityProjectWeb.Areas.Admin.Controllers
{
    [Area("Admin"),Secured("Seller")]
    public class ControlController : BaseController
    {
        

        public ControlController(UnitOfWork unitOfWork) : base(unitOfWork)
        {
            
        }

        public IActionResult Index()
        {
            return View();
        }

        public override void OnActionExecuting(ActionExecutingContext context)
        {
            ViewBag.HomePage = "active";
            base.OnActionExecuting(context);
        }
    }
}
