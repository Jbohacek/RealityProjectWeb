using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RealityProject.DataAccess.DataModels.Adds;

namespace RealityProject.DataAccess.DataModels.Parameters
{
    [Table("tbParameters")]
    public class Parameter : ITable
    {
        [Key]
        public Guid Id { get; set; }

        [Required]
        public string Value { get; set; } = null!;

        public Group Group { get; set; } = null!;

        public virtual ICollection<Advertisement> Advertisements { get; set; } = null!;
    }
}
