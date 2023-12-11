using System.Text.Json;
using Microsoft.AspNetCore.Mvc.Filters;
using Microsoft.AspNetCore.Mvc;
using RealityProject.DataAccess.Models;
using RealityProject.DataAccess.Repository;
using Results = RealityProject.DataAccess.Enums.Results;

namespace RealityProjectWeb.Models
{
    public abstract class BaseController : Controller
    {
        public override void OnActionExecuting(ActionExecutingContext context)
        {
            base.OnActionExecuting(context);

            var login = this.HttpContext.Session.GetString("login");

           
            if (login != null)
            {
                var cred = JsonSerializer.Deserialize<Credentials>(login) ?? new Credentials(Results.NotLogged);
                Credential = cred;
                this.ViewBag.Login = cred;
                this.ViewBag.UserName = cred.UserName;
                this.ViewBag.ProfilePic = Database.Photos.GetFirstOrDefault(x => x.UserId == cred.UserId).GetPath();
            }
        }

        public UnitOfWork Database { get; set; } = null!;
        public Credentials Credential { get; set; }
        public IWebHostEnvironment WebHostEnvironment { get; set; } = null!;


        protected BaseController(UnitOfWork database, IWebHostEnvironment webHostEnvironment)
        {
            Database = database;
            Credential = new Credentials(Results.NotLogged);
            WebHostEnvironment = webHostEnvironment;
        }

        protected BaseController(UnitOfWork database)
        {
            Database = database;
            Credential = new Credentials(Results.NotLogged);
            
        }



        protected BaseController()
        {
            Credential = new Credentials(Results.NotLogged);
        }
    }
}
