using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RealityProject.DataAccess.DataModels
{
    public interface ITable
    {
        public Guid Id { get; set; }
    }
}
