using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Security.Cryptography;
using RealityProject.DataAccess.DataModels.Adds;
using RealityProject.DataAccess.DataModels.Images;
using Microsoft.AspNetCore.Mvc.ModelBinding.Validation;


namespace RealityProject.DataAccess.DataModels.UserManagement
{
    [Table("tbUser")]
    public class User : ITable
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
        public bool IsValid { get; set; } = true;

        public string GetFullName()
        {
            return FirstName + " " + LastName;
        }

        [ValidateNever] public Role UserRole { get; set; } = null!;

        [ForeignKey("Photo")]public Guid? ProfilePicId { get; set; }
        public Photo? ProfilePicture { get; set; } = null!;

        [ValidateNever] public virtual ICollection<Advertisement> Advertisements { get; set; } = null!;
        [ValidateNever] public virtual ICollection<Request> Requests { get; set; } = null!;

    }
}
