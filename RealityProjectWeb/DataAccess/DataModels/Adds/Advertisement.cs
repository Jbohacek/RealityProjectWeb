using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc.ModelBinding.Validation;
using RealityProject.DataAccess.DataModels.Images;
using RealityProject.DataAccess.DataModels.Location;
using RealityProject.DataAccess.DataModels.Parameters;
using RealityProject.DataAccess.DataModels.UserManagement;
using RealityProject.DataAccess.Enums;

namespace RealityProject.DataAccess.DataModels.Adds
{
    [Table("tbAdvertisements")]
    public class Advertisement : ITable
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

        public int ViewsCount { get; set; }

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

            return OutsideSize != 0 ? ret + @$" s pozemkem {OutsideSize}m²" : ret;
        }

        [Required]
        public double Price { get; set; }

        public string GetPrice()
        {
            var ret = "";

            var reversePrice = Price.ToString().Reverse().ToList();

            for (int i = 0; i < Price.ToString().Length; i++)
            {
                ret += reversePrice[i];
                if ((i +1) % 3 == 0)
                {
                    ret += " ";
                }
            }
            var set = ret.ToCharArray();
            Array.Reverse(set);
            return new string(set) + " Kč"; 
        }

        [Required]
        public ElectricityCat Electricity { get; set; }

        public string? Content { get; set; }

        [ValidateNever]public virtual ICollection<Parameter> Parameters { get; set; } = null!;

        [ValidateNever] public virtual ICollection<Photo> Gallery { get; set; } = null!;

        [ForeignKey("Photo")] public Guid? IdPhoto { get; set; }
        public virtual Photo? Photo { get; set; }

        [ValidateNever] public virtual User Seller { get; set; } = null!;

        [ValidateNever] public virtual ICollection<Request> Requests { get; set; } = null!;

        public virtual Address Address { get; set; } = null!;
    }
}
