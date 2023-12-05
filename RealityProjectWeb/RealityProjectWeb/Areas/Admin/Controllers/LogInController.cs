using Microsoft.AspNetCore.Mvc;
using RealityProjectWeb.Areas.Admin.Models;

namespace RealityProjectWeb.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class LogInController : Controller
    {
        public IActionResult Index(bool valid = true)
        {
            if (HttpContext.Session.GetString("login") != null)
            {
                return Redirect("/Admin/Control/Index");
            }
            ViewBag.Valid = valid;
            
            return View(new LogInModel());
        }

        public IActionResult LogIn(LogInModel model)
        {
            if (model.UserName != "jbohacek")
            {
                return Redirect("Index?valid=false");
            }

            if (model.Password != "123456Ab")
            {
                return Redirect("Index?valid=false");
            }

            this.HttpContext.Session.SetString("login", model.UserName);

            return Redirect("/Admin/Control/Index");
        }

        public IActionResult LogOut()
        {
            this.HttpContext.Session.Remove("login");

            return Redirect("/User/Home");
        }
    }
}
