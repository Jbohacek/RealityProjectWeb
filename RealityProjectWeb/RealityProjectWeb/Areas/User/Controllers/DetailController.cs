using Microsoft.AspNetCore.Mvc;
using RealityProject.DataAccess.DataModels.Adds;
using RealityProject.DataAccess.Repository;
using RealityProjectWeb.Models;

namespace RealityProjectWeb.Areas.User.Controllers
{
    [Area("User")]
    public class DetailController : BaseController
    {
        public DetailController(UnitOfWork data) : base(data)
        {
            
        }

        public IActionResult Detail(Guid advGuid)
        {
            var item = Database.Advertisements.GetAllInformation(advGuid);

            return View(item);
        }

        [HttpPost]
        public IActionResult SendRequest(string name, string telephone, string email, string message,Guid advGuid)
        {
            var user = Database.Users.GetAll().SingleOrDefault(x => x.Email == email);

            if (user == null)
            {
                user = Database.Users.GetAll().SingleOrDefault(x => x.GetFullName().ToLower() == name);
            }

            if (user == null)
            {
                var firstName = name;
                var secondName = "";

                if (name.Contains(' ') && name.Split(' ').Length >= 2)
                {
                    firstName = name.Split(' ')[0];
                    secondName = name.Split(' ')[1];
                }

                var role = Database.Roles.GetAll()
                    .Single(x => x.Id == Guid.Parse("f5951fd7-415d-4374-bcc3-aebe7f1a6664"));
                
                user = new RealityProject.DataAccess.DataModels.UserManagement.User()
                {
                    Email = email,
                    FirstName = firstName,
                    LastName = secondName,
                    Password = "*",
                    IsBlocked = false,
                    IsEmailConfirmed = false,
                    IsValid = false,
                    Phone = telephone,
                    UserRole = role,
                    Username = name
                };

                Database.Users.Add(user);
            }

            var adv = Database.Advertisements.GetAll().Single(x => x.Id == advGuid);


            var req = new Request()
            {
                Advertisement = adv,
                User = user,
                Content = message,
                CreateTime = DateTime.Now,
                Email = email,
                Phone = telephone
            };

            Database.Requests.Add(req);

            Database.Save();

            return RedirectToAction("Detail", new { advGuid = advGuid });
        }
    }
}
