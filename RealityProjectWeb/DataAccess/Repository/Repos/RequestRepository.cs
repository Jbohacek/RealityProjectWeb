using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RealityProject.DataAccess.Data;
using RealityProject.DataAccess.DataModels.Adds;

namespace RealityProject.DataAccess.Repository.Repos
{
    public class RequestRepository : Repo<Request>
    {
        private readonly ApplicationDbContext _context;

        public RequestRepository(ApplicationDbContext data) : base(data)
        {
            _context = data;
        }

    }
}
