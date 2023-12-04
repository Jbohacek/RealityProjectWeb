using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
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
    }
}
