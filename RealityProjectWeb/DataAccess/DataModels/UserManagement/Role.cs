using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Newtonsoft.Json;

namespace RealityProject.DataAccess.DataModels.UserManagement
{
    [Table("tbRoles")]
    public class Role : ITable
    {
        [Key] public Guid Id { get; set; }

        [Required] public string Name { get; set; } = null!;

        [Required] public bool IsValid { get; set; } = true;

        [JsonIgnore]public virtual ICollection<User> Users { get; set; } = null!;
    }
}
