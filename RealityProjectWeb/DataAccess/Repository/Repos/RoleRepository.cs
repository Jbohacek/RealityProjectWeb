using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RealityProject.DataAccess.Data;
using RealityProject.DataAccess.DataModels.UserManagement;

namespace RealityProject.DataAccess.Repository.Repos
{
    public class RoleRepository : Repo<Role>
    {
        public RoleRepository(ApplicationDbContext data) : base(data)
        {
        }
    }
}
