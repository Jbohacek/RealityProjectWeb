using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Filters;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.DotNet.Scaffolding.Shared.Project;
using RealityProject.DataAccess.DataModels.Parameters;
using RealityProject.DataAccess.Repository;
using RealityProjectWeb.Areas.User.Controllers;
using RealityProjectWeb.Models;

namespace RealityProjectWeb.Areas.Admin.Controllers
{
    [Area("Admin"),Secured]
    public class ParameterController : BaseController
    {
        public ParameterController(UnitOfWork data) :base (data)
        {

        }

        public IActionResult Index()
        {
            var data = Database.Groups.GetAll("Parameters").ToDictionary(x => x, y => y.Parameters.Count);
            return View(data);
        }
        [ValidateAntiForgeryToken]
        [HttpPost]
        public IActionResult Upsert(Group model)
        {
            if (!ModelState.IsValid)
            {
                return RedirectToAction("Index");
            }

            if (Database.Groups.GetAll().Any(x => x.Id == model.Id))
            {
                var dat = Database.Groups.GetFirstOrDefault(x => x.Id == model.Id);

                dat.Name = model.Name;

                Database.Groups.Update(dat);
                Database.Save();
                return RedirectToAction("Index");
            }

            Database.Groups.Add(model);
            Database.Save();

            return RedirectToAction("Index");

        }

        public override void OnActionExecuting(ActionExecutingContext context)
        {
            ViewBag.ParaPage = "active";
            base.OnActionExecuting(context);
        }
    }
}
