using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RealityProject.DataAccess.DataModels.UserManagement
{
    [Table("tbRoles")]
    public class Role
    {
        [Key] public Guid Id { get; set; }

        [Required] public string Name { get; set; } = null!;

        [Required] public bool IsValid { get; set; } = true;

        public ICollection<User> Users { get; set; } = null!;
    }
}
