using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using RealityProject.DataAccess.Data;
using RealityProject.DataAccess.DataModels.Adds;

namespace RealityProject.DataAccess.Repository.Repos
{
    public class AdvertisementRepository : Repo<Advertisement>
    {
        private readonly ApplicationDbContext _context;

        public AdvertisementRepository(ApplicationDbContext data) : base(data)
        {
            _context = data;
        }


        public Advertisement GetAllInformation(Guid id)
        {
            var item = _context.Advertisements
                .Include(x => x.Gallery)
                .Include(x => x.Seller)
                .Include(x => x.Requests)
                .Include(x =>x.Parameters)
                .FirstOrDefault(x => x.Id == id);

            if(item == null) return new Advertisement();



            return item;
        }
    }
}
