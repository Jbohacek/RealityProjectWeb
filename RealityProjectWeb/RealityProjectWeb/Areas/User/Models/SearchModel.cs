using RealityProject.DataAccess.DataModels.Location;
using RealityProject.DataAccess.Enums;

namespace RealityProjectWeb.Areas.User.Models
{
    public class SearchModel
    {
        public Guid? City { get; set; }
        public Guid? District { get; set; }
        public int? Kraj { get; set; }

        public double MinSizeIn { get; set; }
        public double MaxSizeIn { get; set; }

        public double MinSizeOut { get; set; }
        public double MaxSizeOut { get; set;}

        public double MinPrice { get; set; }
        public double MaxPrice { get; set; }

        public ElectricityCat? Electricity { get; set; }

        public string IsLuxury { get; set; } = null;

        public bool IsNew { get; set; } = true;
    }
}
