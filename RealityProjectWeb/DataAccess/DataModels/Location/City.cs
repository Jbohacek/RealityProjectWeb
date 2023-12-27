using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc.ModelBinding.Validation;
using RealityProject.DataAccess.Enums;

namespace RealityProject.DataAccess.DataModels.Location
{
    [Table("tbCities")]
    public class City : ITable
    {
        [Key]
        public Guid Id { get; set; }

        [ValidateNever] public string Name { get; set; } = null!;

        [MinLength(6), MaxLength(6)]
        public string? PostCode { get; set; }

        [ValidateNever]public District District { get; set; } = null!;
    }
}
