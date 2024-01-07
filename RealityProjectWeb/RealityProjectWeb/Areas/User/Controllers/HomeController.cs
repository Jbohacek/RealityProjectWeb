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
            HomePage newHomePage = new(Database);
            return View(newHomePage);
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