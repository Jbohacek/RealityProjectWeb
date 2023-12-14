using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RealityProject.DataAccess.Enums;

namespace RealityProject.DataAccess.DataModels.Location
{
    [Table("tbDistrict")]
    public class District : ITable
    {
        [Key] public Guid Id { get; set; }

        public string Name { get; set; } = null!;
        
        public Kraj Kraj { get; set; }
    }
}
