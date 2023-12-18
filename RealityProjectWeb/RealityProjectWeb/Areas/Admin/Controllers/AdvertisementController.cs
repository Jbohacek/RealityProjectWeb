using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Filters;
using RealityProject.DataAccess.DataModels.Adds;
using RealityProject.DataAccess.DataModels.Parameters;
using RealityProject.DataAccess.Enums;
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

            ViewBag.Kraje = Kraje.GetKraje();
            ViewBag.Districts = Database.Location.GetDistricts();
            ViewBag.Cities = Database.Location.GetCities();
            ViewBag.Parameters = Database.Groups.GetParameterGroups();


            return View(item);
        }

        public override void OnActionExecuting(ActionExecutingContext context)
        {
            this.ViewBag.AdPage = "active";
            base.OnActionExecuting(context);
        }

        public IActionResult AddParameter(Guid idPara, Guid idAd,string value)
        {
            var addItem = Database.Advertisements.GetAll("Parameters").SingleOrDefault(x => x.Id == idAd);

            if (addItem == null)
            {
                return Ok();
            }

            var addGroup = Database.Groups.GetAll().SingleOrDefault(x => x.Id == idPara);

            var newpara = new Parameter() { Group = addGroup, Id = Guid.NewGuid(), Value = value, Advertisements = new List<Advertisement>()};

            Database.Parameters.Add(newpara);

            newpara.Advertisements.Add(addItem);
            addItem.Parameters.Add(newpara);

            Database.Save();

            return RedirectToAction("Upsert", new { id = idAd });
        }

        public IActionResult RemoveParameter(Guid idPara, Guid idAd)
        {
            var remItem = Database.Parameters.GetFirstOrDefault(x => x.Id == idPara);

            Database.Parameters.Remove(remItem);

            Database.Save();

            return RedirectToAction("Upsert", new { id = idAd });
        }

        public IActionResult EditParameter(Guid idPara, Guid idAd, string value)
        {
            var remItem = Database.Parameters.GetFirstOrDefault(x => x.Id == idPara);

            remItem.Value = value;

            Database.Parameters.Update(remItem);

            Database.Save();

            return RedirectToAction("Upsert", new { id = idAd });
        }
    }
}
