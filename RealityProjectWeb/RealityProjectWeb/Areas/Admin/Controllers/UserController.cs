using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Filters;
using Microsoft.AspNetCore.Mvc.ModelBinding.Validation;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using RealityProject.DataAccess.Data;
using RealityProject.DataAccess.DataModels.Images;
using RealityProject.DataAccess.Enums;
using RealityProject.DataAccess.Repository;
using RealityProjectWeb.Models;

namespace RealityProjectWeb.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class UserController : BaseController
    {

        public UserController(UnitOfWork data, IWebHostEnvironment webHostEnvironment) :base(data,webHostEnvironment)
        {
            
        }

        [Secured]
        public IActionResult Index()
        {

            return View(Database.Users.GetAll("UserRole").ToList());
        }

        [Secured("Seller")]
        public IActionResult Upsert(Guid? id)
        {
            IEnumerable<SelectListItem> data = Database.Roles.GetAll()
                .Select(x => new SelectListItem()
                {
                    Text = x.Name,
                    Value = x.Id.ToString()
                });
            ViewBag.Roles = data;

            RealityProject.DataAccess.DataModels.UserManagement.User item = new() {Id = new Guid()};
            if (id == null || id == Guid.Empty) return View(item);

            var findItem = Database.Users.GetAllInformation((Guid)id);

            if (findItem == null)
            {
                throw new ArgumentException("uzivatel nenalezen");
            }

            

            return View(findItem);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Upsert(RealityProject.DataAccess.DataModels.UserManagement.User model, IFormFile? file)
        {
            if (!ModelState.IsValid)
                return RedirectToAction("Upsert", model.Id);

            FileManager manager =new FileManager(base.WebHostEnvironment.WebRootPath);

            Photo? photo = null;
            if (file != null)
            {
                photo = manager.SaveImage(file, PhotoTypes.Profile);
            }
            var role = Database.Roles.GetFirstOrDefault(x => x.Id == model.UserRole.Id);
            model.UserRole = role;

            if (model.Id != Guid.Empty)
            {
                if (photo != null)
                {
                    if (model.ProfilePicId != Guid.Empty)
                    {
                        var oldPhoto = Database.Photos.GetFirstOrDefault(x => x.Id == model.ProfilePicId);

                        manager.RemovePhoto(oldPhoto);
                        Database.Photos.Remove(oldPhoto);
                        Database.Save();
                    }

                    photo.UserId = model.Id;

                    Database.Photos.Add(photo);
                    Database.Save();
                    model.ProfilePicId = photo.Id;
                }



                
                Database.Users.Update(model);
                Database.Save();
            }
            else
            {

                Database.Users.Add(model);
                if (photo != null)
                {
                    photo.UserId = model.Id;
                    Database.Photos.Add(photo);
                    model.ProfilePicId = photo.Id;
                }

                Database.Save();

            }

            if (base.Credential.UserRole.Name == "Admin")
            {
                return RedirectToAction("index");
            }
            else
            {
                return RedirectToAction("Upsert");
            }

        }

        public override void OnActionExecuting(ActionExecutingContext context)
        {
            ViewBag.UsersPage = "active";
            base.OnActionExecuting(context);
        }
    }
}
