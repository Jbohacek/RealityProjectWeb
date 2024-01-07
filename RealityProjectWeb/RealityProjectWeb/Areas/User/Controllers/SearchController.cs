using System.Text.Json;
using Microsoft.AspNetCore.Mvc;
using RealityProject.DataAccess.DataModels.Adds;
using RealityProject.DataAccess.DataModels.Location;
using RealityProject.DataAccess.Enums;
using RealityProject.DataAccess.Repository;
using RealityProjectWeb.Areas.User.Models;
using RealityProjectWeb.Models;

namespace RealityProjectWeb.Areas.User.Controllers
{
    [Area("User")]
    public class SearchController : BaseController
    {
        public SearchController(UnitOfWork data) : base(data)
        {
           
        }

        public IActionResult Find(SearchModel? model = null)
        {
            
            if (model.IsNew)
            {
                var data = this.HttpContext.Session.GetString("Search");

                if ( data != null)
                {
                    model = JsonSerializer.Deserialize<SearchModel>(data);

                }
                else
                {
                    model = new SearchModel();
                    model.MaxPrice = Database.Advertisements.GetAll().Max(x => x.Price);
                    model.MaxSizeIn = Database.Advertisements.GetAll().Max(x => x.InsideSize);
                    model.MaxSizeOut = (double)Database.Advertisements.GetAll().Max(x => x.OutsideSize);
                }
            }
            else
            {
                


            }




            model.IsNew = false;
            ViewBag.Kraje = Kraje.GetKraje();
            ViewBag.Districts = Database.Location.GetDistricts();
            ViewBag.Cities = Database.Location.GetCities();


            ViewBag.MaxPrice = Database.Advertisements.GetAll().Max(x => x.Price);
            ViewBag.MaxSizeIn = Database.Advertisements.GetAll().Max(x => x.InsideSize);
            ViewBag.MaxSizeOut = (double)Database.Advertisements.GetAll().Max(x => x.OutsideSize);

            if (model.City != null)
            {
                var city = Database.Location.GetCity((Guid)model.City);
                model.District = city.District.Id;
                model.Kraj = (int)city.District.Kraj;

            }
            else if (model.District != null)
            {
                var dist = Database.Location.GetDistrict((Guid)model.District);
                model.Kraj = (int)dist.Kraj;
            }

            this.HttpContext.Session.SetString("Search", JsonSerializer.Serialize(model));

            var listOfData = GetDataBySearch(model);

            FindPage page = new()
            {
                Advertisements = listOfData,
                SearchModel = model,
                TotalCount = listOfData.Count
            };

            page.TotalPages = (listOfData.Count / page.ShowCount) + 1;


            return View(page);
        }

        public List<Advertisement> GetDataBySearch(SearchModel model)
        {
            bool? isLuxury = model.IsLuxury switch
            {
                "true" => true,
                "false" => false,
                _ => null
            };

            var retList = Database.Advertisements.GetAll("Gallery,Address")
                .Where(x => x.Price >= model.MinPrice && x.Price <= model.MaxPrice)
                .Where(x => x.InsideSize >= model.MinSizeIn && x.InsideSize <= model.MaxSizeIn)
                .Where(x => x.OutsideSize >= model.MinSizeOut && x.OutsideSize <= model.MaxSizeOut);

            if (isLuxury != null)
            {
                retList = retList.Where(x => x.IsLuxury == isLuxury);
            }

            if (model.Electricity != null)
            {
                retList = retList.Where(x => x.Electricity == model.Electricity);
            }

            if (model.City != null)
            {
                retList = retList.Where(x => x.Address.City.Id == model.City);
            }else if (model.District != null)
            {
                retList = retList.Where(x => x.Address.City.District.Id == model.District);
            }else if (model.Kraj != null)
            {
                if (model.Kraj != 14)
                {
                    retList = retList.Where(x => x.Address.City.District.Kraj == (Kraj)model.Kraj);
                }
            }



            return retList.ToList();
        }

    }
}
