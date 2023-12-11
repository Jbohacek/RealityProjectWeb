using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Filters;
using RealityProject.DataAccess.DataModels.Adds;
using RealityProject.DataAccess.Repository;
using RealityProjectWeb.Models;

namespace RealityProjectWeb.Areas.Admin.Controllers
{
    [Secured("Seller"),Area("Admin")]
    public class AdvertisementController : BaseController
    {
        public AdvertisementController(UnitOfWork data) : base(data)
        {

        }

        public IActionResult Index()
        {
            var data = Database.Advertisements.GetAll("Seller,Requests,Gallery").ToList();

            if (base.Credential.UserRole.Name == "Seller")
            {
                data = data.Where(x => x.Seller.Id == base.Credential.UserId).ToList();
            }
            return View(data);
        }

        public IActionResult Upsert(Guid? id)
        {
            var item = new Advertisement();
            if (id != null)
            {
                item = Database.Advertisements.GetAllInformation((Guid)id);
            }


            return View(item);
        }

        public override void OnActionExecuting(ActionExecutingContext context)
        {
            this.ViewBag.AdPage = "active";
            base.OnActionExecuting(context);
        }
    }
}
