using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Security.Cryptography;

namespace RealityProject.DataAccess.DataModels.UserManagement
{
    [Table("tbUser")]
    public class User
    {
        [Key] public Guid Id { get; set; }

        [Required] public string Username { get; set; } = null!;

        [Required] public string FirstName { get; set; } = null!;
        [Required] public string LastName { get; set; } = null!;

        [Required] public string Password { get; set; } = null!;

        [Required] public string Email { get; set; } = null!;
        public string? Phone { get; set; }

        public bool IsEmailConfirmed { get; set; } = false;
        public bool IsBlocked { get; set; } = false;

        public string GetFullName()
        {
            return FirstName + " " + LastName;
        }

        public Role UserRole { get; set; } = null!;


    }
}
