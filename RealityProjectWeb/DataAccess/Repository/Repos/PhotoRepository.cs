using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RealityProject.DataAccess.Data;
using RealityProject.DataAccess.DataModels.Images;

namespace RealityProject.DataAccess.Repository.Repos
{
    public class PhotoRepository : Repo<Photo>
    {
        private readonly ApplicationDbContext _context;

        public PhotoRepository(ApplicationDbContext data) : base(data)
        {
            _context = data;
        }


    }
}
