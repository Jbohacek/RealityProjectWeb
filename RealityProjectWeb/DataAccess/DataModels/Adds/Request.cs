using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RealityProject.DataAccess.DataModels.UserManagement;

namespace RealityProject.DataAccess.DataModels.Adds
{
    [Table("tbRequest")]
    public class Request : ITable
    {
        [Key]public Guid Id { get; set; }

        public User? User { get; set; }

        public Advertisement Advertisement { get; set; } = null!;

        public string Content { get; set; } = null!;
        public string Email { get; set;} = null!;
        public string Phone { get; set; } = null!;

        public DateTime CreateTime { get; set; }

    }
}
