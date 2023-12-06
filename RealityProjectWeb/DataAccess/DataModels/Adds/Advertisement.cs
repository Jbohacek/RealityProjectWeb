using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using RealityProject.DataAccess.DataModels.Images;
using RealityProject.DataAccess.DataModels.Parameters;
using RealityProject.DataAccess.DataModels.UserManagement;
using RealityProject.DataAccess.Enums;

namespace RealityProject.DataAccess.DataModels.Adds
{
    [Table("tbAdvertisements")]
    public class Advertisement
    {
        [Key]
        public Guid Id { get; set; }

        [Required]
        public HomeTypes HomeType { get; set; }
        [Required]
        public bool IsLuxury { get; set; }

        [Required]
        public double InsideSize { get; set; }

        public double? OutsideSize { get; set; }

        public string GetName()
        {
            var type = HomeType switch
            {
                HomeTypes.Flat => @"bytu",
                HomeTypes.Cottage => @"chaty",
                HomeTypes.House => @"domu",
                _ => throw new ArgumentOutOfRangeException()
            };
            var ret = @$"Prodej {type} {InsideSize}m²"; ;

            return OutsideSize != null ? ret + @$" s pozemkem {OutsideSize}m²" : ret;
        }

        [Required]
        public double Price { get; set; }
        public string GetPrice() => @$"{Price} + Kč";

        [Required]
        public ElectricityCat Electricity { get; set; }

        public string? Content { get; set; }

        public virtual ICollection<Parameter> Parameters { get; set; } = null!;

        public virtual ICollection<Photo> Gallery { get; set; } = null!;

        [ForeignKey("Photo")] public Guid? IdPhoto { get; set; }
        public virtual Photo? Photo { get; set; }

        public virtual User Seller { get; set; } = null!;

        public virtual ICollection<Request> Requests { get; set; } = null!;
    }
}
