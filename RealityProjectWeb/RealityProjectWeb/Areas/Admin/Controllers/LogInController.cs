using System.Xml.Serialization;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using RealityProject.DataAccess.Repository;
using RealityProjectWeb.Areas.Admin.Models;
using RealityProjectWeb.Models;
using JsonSerializer = System.Text.Json.JsonSerializer;
using Results = RealityProject.DataAccess.Enums.Results;

namespace RealityProjectWeb.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class LogInController : BaseController
    {
        public LogInController(UnitOfWork data) :base(data)
        {
            
        }

        public IActionResult Index(string reasonMessage = "")
        {
            if (Credential.Result != Results.NotLogged)
            {
                if (Credential.UserRole.Name == "Admin")
                {
                    return Redirect("/Admin/Control/Index");
                }
            }
            
            ViewBag.Valid = reasonMessage;
            
            return View(new LogInModel());
        }

        public IActionResult LogIn(LogInModel model)
        {
            var cred = Database.Users.LogIn(model.UserName, model.Password);

            if (cred.Result != Results.Success)
            {
                switch (cred.Result)
                {
                    case Results.WrongPassword:
                        return Redirect("Index?reasonMessage=Wrong password!");
                    case Results.WrongUserName:
                        return Redirect("Index?reasonMessage=Wrong Username!");
                    case Results.NoAdmin:
                        return Redirect("Index?reasonMessage=Only Admin!");
                }
                return Redirect("Index?valid=false");
            }
            var info = JsonConvert.SerializeObject(cred, Formatting.Indented,
                new JsonSerializerSettings
                {
                    ReferenceLoopHandling = ReferenceLoopHandling.Ignore
                });


            this.HttpContext.Session.SetString("login", info);

            return Redirect("/Admin/Control/Index");
        }

        public IActionResult LogOut()
        {
            this.HttpContext.Session.Remove("login");

            return Redirect("/Admin/");
        }
    }
}
