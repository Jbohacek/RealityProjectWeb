using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RealityProject.DataAccess.Data;
using RealityProject.DataAccess.DataModels.Parameters;

namespace RealityProject.DataAccess.Repository.Repos
{
    public class ParameterRepository : Repo<Parameter>
    {

        private readonly ApplicationDbContext _context;


        public ParameterRepository(ApplicationDbContext data) : base(data)
        {
            _context = data;
        }
    }
}
