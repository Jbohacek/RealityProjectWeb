using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RealityProject.DataAccess.DataModels.Location
{
    [Table("tbLocation")]
    public class Address : ITable
    {
        public Guid Id { get; set; }

        public string Street { get; set; } = null!;

        public int Floor { get; set; }

        public City City { get; set; } = null!;

        public override string ToString()
        {
            return $"{City.Name}, {City.District.Name}";
        }
    }
}
