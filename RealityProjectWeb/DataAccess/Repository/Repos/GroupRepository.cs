using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc.Rendering;
using RealityProject.DataAccess.Data;
using RealityProject.DataAccess.DataModels.Location;
using RealityProject.DataAccess.DataModels.Parameters;
using RealityProject.DataAccess.Enums;

namespace RealityProject.DataAccess.Repository.Repos
{
    public class GroupRepository : Repo<Group>
    {
        public GroupRepository(ApplicationDbContext data) : base(data)
        {
        }


        public ICollection<SelectListItem> GetParameterGroups(List<Parameter> alreadyAssigned)
        {
            var bList = alreadyAssigned.Select(x => x.Group.Id).Distinct().ToList();

            var ret = base.GetAll().ToList();
            ret.RemoveAll(x => bList.Contains(x.Id));
            var final = ret.Select(x => new SelectListItem(x.Name, x.Id.ToString())).ToList();
            return final;
        }
    }
}
