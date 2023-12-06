﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RealityProject.DataAccess.DataModels.Adds;

namespace RealityProject.DataAccess.DataModels.Images
{
    [Table(@"tbPhotos")]
    public class Photo
    {
        [Key]
        public Guid Id { get; set; }

        [Required]
        public string FotoName { get; set; } = null!;

        [Required]
        public string FotoPath { get; set; } = null!;

        [MaxLength(10)]
        public string Type { get; set; } = null!;

        public double? Size { get; set; }

        public virtual ICollection<Advertisement> Advertisements { get; set; } = null!;

        [ForeignKey("Advertisement")] public Guid? AdvertisementId { get; set; }
        public virtual Advertisement? MainPhoto { get; set; }
    }
}
