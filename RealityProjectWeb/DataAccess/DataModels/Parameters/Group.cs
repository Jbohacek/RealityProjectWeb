using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc.ModelBinding.Validation;

namespace RealityProject.DataAccess.DataModels.Parameters
{
    [Table("tbGroupParameters")]
    public class Group : ITable
    {
        [Key] public Guid Id { get; set; }

        [Required, MinLength(3)] public string Name { get; set; } = null!;

        [ValidateNever]public virtual ICollection<Parameter> Parameters { get; set; } = null!;
    }
}
