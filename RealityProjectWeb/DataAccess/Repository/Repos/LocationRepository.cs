using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using RealityProject.DataAccess.Data;
using RealityProject.DataAccess.DataModels.Location;
using RealityProject.DataAccess.Enums;

namespace RealityProject.DataAccess.Repository.Repos
{
    public class LocationRepository : Repo<Address>
    {
        private readonly DbSet<City> _cities;
        private readonly DbSet<District> _districts;

        public LocationRepository(ApplicationDbContext data) : base(data)
        {
            _cities = data.Set<City>();
            _districts = data.Set<District>();
        }

        public ICollection<SelectListItem> GetDistricts(Kraj? kraj = null)
        {
            var ret = _districts.ToList();
            if (kraj != null)
            {
                ret = ret.Where(x => x.Kraj == kraj).ToList();
            }

            var final = ret.Select(x => new SelectListItem(x.Name, x.Id.ToString())).ToList();

            return final;
        }

        public ICollection<SelectListItem> GetCities(Guid? districtId = null)
        {
            var ret = _cities.Include(x => x.District).ToList();

            if (districtId != null)
            {
                ret = ret.Where(x => x.District.Id == districtId).ToList();
            }

            var final = ret.Select(x => new SelectListItem(x.Name, x.Id.ToString())).ToList();

            return final;
        }

        public District GetDistrict(Guid id)
        {
            return _districts.SingleOrDefault(x => x.Id == id);
        }

        public City GetCity(Guid id)
        {
            return _cities.SingleOrDefault(x => x.Id == id);
        }

    }
}
