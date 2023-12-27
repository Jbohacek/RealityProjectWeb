using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Filters;
using Microsoft.AspNetCore.Mvc.RazorPages;
using RealityProject.DataAccess.Data;
using RealityProject.DataAccess.DataModels.Adds;
using RealityProject.DataAccess.DataModels.Images;
using RealityProject.DataAccess.DataModels.Location;
using RealityProject.DataAccess.DataModels.Parameters;
using RealityProject.DataAccess.Enums;
using RealityProject.DataAccess.Repository;
using RealityProjectWeb.Areas.Admin.Models;
using RealityProjectWeb.Models;

namespace RealityProjectWeb.Areas.Admin.Controllers
{
    [Secured("Seller"),Area("Admin")]
    public class AdvertisementController : BaseController
    {
        public AdvertisementController(UnitOfWork data, IWebHostEnvironment webHostEnvironment) : base(data,webHostEnvironment)
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

        public IActionResult Upsert(Guid? id,int? page)
        {
            var item = new Advertisement();
            if (id != null)
            {
                item = Database.Advertisements.GetAllInformation((Guid)id);
            }
            else
            {
                item.Parameters = new List<Parameter>();
                item.Address = new Address()
                {
                    Floor = 0,
                    Street = "None"
                };

                item.Address.City = Database.Location.GetCity(Guid.Parse("F63C38B1-0F93-4822-9945-4CE8B07ECAC4"));
                item.Requests = new List<Request>();
                item.Gallery = new List<Photo>();
            }

            if (page != null)
            {
                ViewBag.Page = page;
            }
            else
            {
                ViewBag.Page = 0;
            }


            ViewBag.Kraje = Kraje.GetKraje();
            ViewBag.Districts = Database.Location.GetDistricts();
            ViewBag.Cities = Database.Location.GetCities();

            var parameters = Database.Groups.GetParameterGroups(item.Parameters.ToList());
            ViewBag.Parameters = parameters;
            ViewBag.ShowParameters = true;
            if (parameters.Count == 0)
            {
                ViewBag.ShowParameters = false;
            }


            return View(item);
        }

        [HttpPost]
        public IActionResult Update(Advertisement item)
        {
            if (!ModelState.IsValid)
            {
                

                return RedirectToAction("Upsert", new { id = item.Id,page = 1 });
            }
            var datItem = Database.Advertisements.GetAllInformation(item.Id);

            datItem.HomeType = item.HomeType;
            datItem.Electricity = item.Electricity;
            datItem.IsLuxury = item.IsLuxury;
            datItem.InsideSize = item.InsideSize;
            datItem.OutsideSize = item.OutsideSize;
            datItem.Price = item.Price;
            datItem.Content = item.Content;

            datItem.Address.Street = item.Address.Street;
            datItem.Address.Floor = item.Address.Floor;

            
            datItem.Address.City = Database.Location.GetCity(item.Address.City.Id);

            Database.Advertisements.Update(datItem);
            Database.Save();
            return RedirectToAction("Upsert", new { id = item.Id, page = 1 });
        }

        [HttpPost]
        public IActionResult AddImage(Advertisement item,IFormFile? file)
        {
            var manger = new FileManager(base.WebHostEnvironment.WebRootPath);

            var addImage = manger.SaveImage(file, PhotoTypes.Gallery);

            var advertisementdata = Database.Advertisements.GetAll("Gallery").SingleOrDefault(x => x.Id == item.Id);


            Database.Photos.Add(addImage);

            advertisementdata.Gallery.Add(addImage);

            Database.Advertisements.Update(advertisementdata);

            Database.Save();

            

            return RedirectToAction("Upsert", new {id = item.Id,page = 3});
        }

        public IActionResult RemoveImage(Guid photoId, Guid advertisementId)
        {
            var foto = Database.Photos.GetAll().SingleOrDefault(x => x.Id == photoId);


            Database.Photos.Remove(foto);
            Database.Save();

            var manger = new FileManager(base.WebHostEnvironment.WebRootPath);
            manger.RemovePhoto(foto);
            ViewBag.Page = 3;
            return RedirectToAction("Upsert", new { id = advertisementId, page = 3 });
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

           

            return RedirectToAction("Upsert", new { id = idAd, page = 2 });
        }

        public IActionResult RemoveParameter(Guid idPara, Guid idAd)
        {
            var remItem = Database.Parameters.GetFirstOrDefault(x => x.Id == idPara);

            Database.Parameters.Remove(remItem);

            Database.Save();

            ViewBag.Page = 2;
            return RedirectToAction("Upsert", new { id = idAd, page =2 });
        }

        public IActionResult EditParameter(Guid idPara, Guid idAd, string value)
        {
            var remItem = Database.Parameters.GetFirstOrDefault(x => x.Id == idPara);

            remItem.Value = value;

            Database.Parameters.Update(remItem);

            Database.Save();

            return Ok();
        }
    }
}
