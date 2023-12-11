using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RealityProject.DataAccess.Data;
using RealityProject.DataAccess.DataModels.Parameters;

namespace RealityProject.DataAccess.Repository.Repos
{
    public class GroupRepository : Repo<Group>
    {
        public GroupRepository(ApplicationDbContext data) : base(data)
        {
        }
    }
}
