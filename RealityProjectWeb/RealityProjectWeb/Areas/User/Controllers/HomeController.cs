using Microsoft.AspNetCore.Mvc;
using RealityProjectWeb.Models;
using System.Diagnostics;
using RealityProject.DataAccess.Repository;

using RealityProject.DataAccess.DataModels;
using RealityProject.DataAccess.DataModels.UserManagement;

namespace RealityProjectWeb.Areas.User.Controllers
{
    [Area("User")]
    public class HomeController : BaseController
    {
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger, UnitOfWork data) : base(data)
        {
            _logger = logger;
        }

        public IActionResult Index()
        {
            //Role role = new Role() { Id = Guid.NewGuid(), IsValid = true, Name = "Admin" };
            //base.Database.Roles.Add(role);
            //Database.Save();

            //Role admin = Database.Roles.GetAll().FirstOrDefault(x => x.Name == "Admin");


            //RealityProject.DataAccess.DataModels.UserManagement.User a =
            //    new RealityProject.DataAccess.DataModels.UserManagement.User()
            //    {
            //        Id = Guid.NewGuid(),
            //        Username = "jbohacek",
            //        FirstName = "Jakub",
            //        LastName = "Bohaček",
            //        Password = "123456",
            //        Email = "bohacekjakub@sssvt.cz",
            //        UserRole = admin
            //    };

            //Database.Users.Add(a);
            //Database.Save();


            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}