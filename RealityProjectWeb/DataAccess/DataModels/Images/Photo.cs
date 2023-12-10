using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RealityProject.DataAccess.DataModels.Adds;
using RealityProject.DataAccess.DataModels.UserManagement;
using RealityProject.DataAccess.Enums;

namespace RealityProject.DataAccess.DataModels.Images
{
    [Table(@"tbPhotos")]
    public class Photo : ITable
    {
        [Key]
        public Guid Id { get; set; }

        public PhotoTypes Type { get; set; }

        public double? Size { get; set; }

        public virtual ICollection<Advertisement> Advertisements { get; set; } = null!;

        [ForeignKey("Advertisement")] public Guid? AdvertisementId { get; set; }
        public virtual Advertisement? MainPhoto { get; set; }

        [ForeignKey("User")] public Guid? UserId { get; set; }
        public virtual User? ProfilePicture { get; set; }

        
        public string GetPath()
        {
            var url = $"/Pictures/{Type.ToString()}/{Id}.png";
            return url;

        }

    }
}
